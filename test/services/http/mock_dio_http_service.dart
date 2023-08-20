import 'package:dio/dio.dart';
import 'package:flutter_articles/services/http/dio_http_service.dart';
import 'package:flutter_articles/services/storage/storage_service.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../dummy-data/dummy_articles.dart';

class MockDioHttpService extends DioHttpService {
  late DioAdapter dioAdapter;

  MockDioHttpService(StorageService storageService) : super(storageService) {
    dioAdapter = DioAdapter(
      dio: Dio(
        DioHttpService(storageService).baseOptions.copyWith(baseUrl: 'https://api.test/'),
      ),
    );

    registerMockRequest(dioAdapter);
  }

  @override
  Dio get dio => dioAdapter.dio;
}

class MockRequest {
  final int statusCode;
  final String route;
  final dynamic response;
  final Map<String, dynamic>? queryParameters;

  MockRequest({
    required this.statusCode,
    required this.route,
    required this.response,
    this.queryParameters,
  });
}

List<MockRequest> mockGetRequests = [
  MockRequest(
    statusCode: 200,
    route: '200-get-request-test',
    response: {'data': 'Success get request!'},
  ),
  MockRequest(
    statusCode: 200,
    route: 'articles',
    queryParameters: {
      'tag': 'flutter, dart',
    },
    response: DummyArticles.dummyRawArticlesResponse,
  ),
  MockRequest(
    statusCode: 200,
    route: 'articles',
    queryParameters: {'username': 'aqueel'},
    response: DummyArticles.dummyRawAuthorArticlesResponse,
  ),
  MockRequest(
    statusCode: 200,
    route: 'article/${DummyArticles.dummyRawArticleDetails['id']}',
    response: DummyArticles.dummyRawArticleDetails,
  ),
  MockRequest(
    statusCode: 401,
    route: '401-get-request-test',
    response: {'statusMessage': 'Unauthorized'},
  ),
  MockRequest(
    statusCode: 404,
    route: '404-get-request-test',
    response: {'statusMessage': 'Not Found'},
  ),
];

List<MockRequest> mockPostRequest = [
  MockRequest(
    statusCode: 200,
    route: '200-post-request-test',
    response: {'data': 'Success post request!'},
  ),
  MockRequest(
    statusCode: 401,
    route: '401-post-request-test',
    response: {'statusMessage': 'Unauthorized'},
  ),
  MockRequest(
    statusCode: 404,
    route: '404-post-request-test',
    response: {'statusMessage': 'Not Found'},
  ),
];

void registerMockRequest(DioAdapter dioAdapter) {
  for (MockRequest request in mockGetRequests) {
    dioAdapter.onGet(
      request.route,
      (server) => server.reply(
        request.statusCode,
        request.response,
      ),
      queryParameters: request.queryParameters,
    );
  }

  for (MockRequest request in mockPostRequest) {
    dioAdapter.onPost(
      request.route,
      (server) => server.reply(
        request.statusCode,
        request.response,
      ),
    );
  }
}
