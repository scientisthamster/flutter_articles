import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_articles/services/http/http_service.dart';

class DioHttpService implements HttpService {
  @visibleForTesting
  Dio? dio;

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
  Future get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (queryParameters != null) {
      log('Request query parameters: $queryParameters');
    }

    Dio _dio = dio ?? Dio(baseOptions);
    log('Get request to: ${_dio.options.baseUrl + endpoint}');

    try {
      Response response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
    } on DioException catch (_) {
      rethrow;
    }
  }

  @override
  Future post({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (queryParameters != null) {
      log('Request query parameters: $queryParameters');
    }

    Dio _dio = dio ?? Dio(baseOptions);
    log('Get request to: ${_dio.options.baseUrl + endpoint}');

    try {
      Response response = await _dio.post(
        endpoint,
        queryParameters: queryParameters,
      );
    } on DioException catch (_) {
      rethrow;
    }
  }

  @override
  Future put() async {}

  @override
  Future delete() async {}
}
