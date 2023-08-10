import 'package:dio/dio.dart';
import 'package:flutter_articles/services/http/dio_http_service.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class MockDioHttpService extends DioHttpService {
  DioAdapter dioAdapter = DioAdapter(
    dio: Dio(
      DioHttpService().baseOptions.copyWith(baseUrl: 'https://api.test/'),
    ),
  );

  MockDioHttpService() {
    registerMockRequest(dioAdapter);
  }

  @override
  Dio get dio => dioAdapter.dio;
}

class MockRequest {
  final int statusCode;
  final String route;
  final Map<String, dynamic> response;

  MockRequest({
    required this.statusCode,
    required this.route,
    required this.response,
  });
}

List<MockRequest> mockGetRequests = [
  MockRequest(
    statusCode: 200,
    route: '200-get-request-test',
    response: {'data': 'Success get request!'},
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
  )
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
  )
];

void registerMockRequest(DioAdapter dioAdapter) {
  for (MockRequest request in mockGetRequests) {
    dioAdapter.onGet(
      request.route,
      (server) => server.reply(
        request.statusCode,
        request.response,
      ),
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
