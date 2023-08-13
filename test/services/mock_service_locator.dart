import 'package:flutter_articles/services/http/http_service.dart';
import 'package:get_it/get_it.dart';

import 'http/mock_dio_http_service.dart';

final mockGetIt = GetIt.instance;

void setupMockServiceLocator() {
  mockGetIt.registerSingleton<HttpService>(MockDioHttpService());
}

Future resetMockServiceLocator() async {
  await mockGetIt.reset();
}
