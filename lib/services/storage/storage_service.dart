import 'package:flutter/cupertino.dart';

class StorageKeys {
  @visibleForTesting
  static const String test = 'test';
}

abstract class StorageService {
  Future<void> init();

  Future<void> remove(String key);

  dynamic get(String key);

  dynamic getAll();

  Future<void> clear();

  bool has(String key);

  Future<void> set(String? key, dynamic value);

  Future<void> close();
}
