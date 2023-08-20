import 'package:dio/dio.dart';
import 'package:flutter_articles/exceptions/http_exception.dart';
import 'package:flutter_articles/models/http_response.dart';
import 'package:flutter_articles/services/http/dio_http_service.dart';
import 'package:flutter_articles/services/http/http_service.dart';
import 'package:flutter_articles/services/storage/storage_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mock_service_locator.dart';
import 'mock_dio_http_service.dart';

void main() {
  group('DioHttpService tests', () {
    late HttpService mockHttpService;
    late StorageService mockStorageService;

    setUp(() {
      setupMockServiceLocator();
      mockHttpService = mockGetIt<HttpService>();
      mockStorageService = mockGetIt<StorageService>();
    });

    test('Return correct Dio clients', () async {
      final Response response =
          await mockHttpService.post('200-get-request-test');
      expect(
        response.requestOptions.baseUrl,
        equals(MockDioHttpService(mockStorageService).dio.options.baseUrl),
      );
      expect(
        response.requestOptions.baseUrl,
        isNot(DioHttpService(mockStorageService).dio.options.baseUrl),
      );
    });

    test('Get request with statusCode = 200', () async {
      final HttpResponse response =
          await mockHttpService.get('200-get-request-test');

      expect(response.data, {'data': 'Success get request!'});
    });

    test('Get request with statusCode = 401', () async {
      expectLater(
        () async => await mockHttpService.get('401-get-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await mockHttpService.get('401-get-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 401);
      }
    });

    test('Get request with statusCode = 404', () async {
      expectLater(
        () async => await mockHttpService.get('404-get-request-test'),
        throwsA(isA<HttpException>()),
      );

      try {
        await mockHttpService.get('404-get-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 404);
      }
    });

    test('Post request with statusCode = 200', () async {
      final Response response =
          await mockHttpService.post('200-post-request-test');

      expect(response.statusCode, 200);
      expect(response.data, {'data': 'Success post request!'});
    });

    test('Post request with statusCode = 401', () async {
      expectLater(
        () async => await mockHttpService.post('401-post-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await mockHttpService.post('401-post-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 401);
      }
    });

    test('Post request with statusCode = 404', () async {
      expectLater(
        () async => await mockHttpService.post('404-post-request-test'),
        throwsA(
          isA<HttpException>(),
        ),
      );

      try {
        await mockHttpService.post('404-post-request-test');
      } on HttpException catch (exception) {
        expect(exception.title, 'Http Error!');
        expect(exception.statusCode, 404);
      }
    });

    test('Unimplemented methods', () async {
      expectLater(
        () async => await mockHttpService.put(),
        throwsA(
          isA<UnimplementedError>(),
        ),
      );
      expectLater(
        () async => await mockHttpService.delete(),
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
