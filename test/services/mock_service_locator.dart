import 'package:flutter_articles/services/http/http_service.dart';
import 'package:flutter_articles/services/storage/storage_service.dart';
import 'package:get_it/get_it.dart';

import 'http/mock_dio_http_service.dart';
import 'storage/mock_hive_storage_service.dart';

final mockGetIt = GetIt.instance;

void setupMockServiceLocator() {
  mockGetIt.registerSingleton<StorageService>(MockHiveStorageService());
  final StorageService mockStorageService = mockGetIt<StorageService>();
  mockGetIt.registerSingleton<HttpService>(MockDioHttpService(mockStorageService));
}

Future resetMockServiceLocator() async {
  await mockGetIt.reset();
}
