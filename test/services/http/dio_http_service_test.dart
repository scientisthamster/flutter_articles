import 'package:dio/dio.dart';
import 'package:flutter_articles/exceptions/http_exception.dart';
import 'package:flutter_articles/services/http/dio_http_service.dart';
import 'package:flutter_articles/services/http/http_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mock_service_locator.dart';
import 'mock_dio_http_service.dart';

void main() {
  group('DioHttpService tests', () {
    late HttpService httpService;

    setUp(() {
      setupMockServiceLocator();
      httpService = getIt<HttpService>();
    });

    test('Return correct Dio clients', () async {
      final Response response =
          await httpService.get(endpoint: '200-get-request-test');

      expect(
        response.requestOptions.baseUrl,
        equals(MockDioHttpService().dio.options.baseUrl),
      );
      expect(
        response.requestOptions.baseUrl,
        isNot(DioHttpService().dio.options.baseUrl),
      );
    });

    test('Get request with statusCode = 200', () async {
      final Response response =
          await httpService.get(endpoint: '200-get-request-test');

      expect(response.statusCode, 200);
      expect(response.data, {'data': 'Success get request!'});
    });

    test('Get request with statusCode = 401', () async {
      expectLater(
        () async => await httpService.get(endpoint: '401-get-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await httpService.get(endpoint: '401-get-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 401);
      }
    });

    test('Get request with statusCode = 404', () async {
      expectLater(
        () async => await httpService.get(endpoint: '404-get-request-test'),
        throwsA(isA<HttpException>()),
      );

      try {
        await httpService.get(endpoint: '404-get-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 404);
      }
    });

    test('Post request with statusCode = 200', () async {
      final Response response =
          await httpService.post(endpoint: '200-post-request-test');

      expect(response.statusCode, 200);
      expect(response.data, {'data': 'Success post request!'});
    });

    test('Post request with statusCode = 401', () async {
      expectLater(
        () async => await httpService.post(endpoint: '401-post-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await httpService.post(endpoint: '401-post-request-test');
      } on HttpException catch(exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 401);
      }
    });

    test('Post request with statusCode = 404', () async {
      expectLater(
        () async => await httpService.post(endpoint: '404-post-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await httpService.post(endpoint: '404-post-request-test');
      } on HttpException catch(exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 404);
      }
    });

    test('Unimplemented methods', () async {
      expectLater(
        () async => await httpService.put(),
        throwsA(
          isA<UnimplementedError>(),
        ),
      );
      expectLater(
        () async => await httpService.delete(),
        throwsA(
          isA<UnimplementedError>(),
        ),
      );
    });

    tearDown(() async {
      await resetMockServiceLocator();
    });
  });
}
