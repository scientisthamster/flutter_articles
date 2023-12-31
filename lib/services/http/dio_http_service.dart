import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_articles/exceptions/http_exception.dart';
import 'package:flutter_articles/models/cached_response.dart';
import 'package:flutter_articles/models/http_response.dart';
import 'package:flutter_articles/services/http/http_service.dart';
import 'package:flutter_articles/services/storage/storage_service.dart';

class DioHttpService implements HttpService {
  final StorageService storageService;

  DioHttpService(this.storageService);

  Dio get dio => Dio(baseOptions);

  @override
  String get baseUrl => 'https://dev.to/api/';

  @override
  Map<String, String> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  BaseOptions get baseOptions => BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (status) => true,
        // To handle errors manually rather than by Dio
        headers: headers,
      );

  @override
  Future<HttpResponse<dynamic>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    bool forceRefresh = false,
  }) async {
    log('Get Request to: ${dio.options.baseUrl + endpoint}${queryParameters != null ? ' | params: $queryParameters' : ''}');

    final dynamic cachedResponse =
        getFromCache(endpoint, queryParameters: queryParameters);
    if (!forceRefresh && cachedResponse != null) {
      log('Getting response from cache');
      return HttpResponse(data: cachedResponse);
    }

    try {
      final response =
          await getFromNetwork(endpoint, queryParameters: queryParameters);
      return HttpResponse(data: response);
    } catch (e) {
      if (cachedResponse != null) {
        log('An Error Occurred! Getting response from cache');
        return HttpResponse(
          data: cachedResponse,
          isOffline: true,
        );
      } else {
        throw HttpException(
          title: 'An Error Occurred and no cached response',
        );
      }
    }
  }

  String getRequestStorageKey(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    String _storageKey = 'GET:${dio.options.baseUrl + endpoint}/';
    if (queryParameters != null) {
      _storageKey += '?';
      queryParameters.forEach((key, value) {
        _storageKey += '$key=$value&';
      });
    }
    return _storageKey;
  }

  @override
  Future<Response> post(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    log('Post request to: ${dio.options.baseUrl + endpoint}\nparams: $queryParameters');

    Response response = await dio.post(
      endpoint,
      queryParameters: queryParameters,
    );

    if (response.data == null || response.statusCode != 200) {
      throw HttpException(
        title: 'Http Error!',
        message: response.statusMessage,
        statusCode: response.statusCode,
      );
    }

    return response;
  }

  @override
  dynamic getFromCache(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    final storageKey =
        getRequestStorageKey(endpoint, queryParameters: queryParameters);

    if (storageService.has(storageKey)) {
      final rawCachedResponse = storageService.get(storageKey);
      final CachedResponse cachedResponse = CachedResponse.fromJson(
        json.decode(
          json.encode(rawCachedResponse),
        ),
      );
      if (cachedResponse.isValid) {
        return cachedResponse.response;
      }
    }
  }

  @override
  Future<dynamic> getFromNetwork(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    Response response =
        await dio.get(endpoint, queryParameters: queryParameters);
    log('Getting response from network');

    if (response.data == null || response.statusCode != 200) {
      throw HttpException(
        title: 'Http Error!',
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
    }

    final storageKey =
        getRequestStorageKey(endpoint, queryParameters: queryParameters);

    CachedResponse cachedResponse = CachedResponse(
      response: response.data,
      age: DateTime.now(),
    );

    storageService.set(storageKey, cachedResponse.toJson());

    return response.data;
  }

  @override
  Future put() {
    // TODO implement put
    throw UnimplementedError();
  }

  @override
  Future delete() {
    // TODO implement delete
    throw UnimplementedError();
  }
}
