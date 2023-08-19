import 'package:flutter_articles/services/storage/storage_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStorageService implements StorageService {
  late Box hiveBox;

  Future<void> openBox([String boxName = 'FLUTTER_ARTICLES']) async {
    hiveBox = await Hive.openBox(boxName);
  }

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    await openBox();
  }

  @override
  Future<void> remove(String key) async => hiveBox.delete(key);

  @override
  get(String key) => hiveBox.get(key);

  @override
  getAll() => hiveBox.values.toList();

  @override
  Future<void> clear() async => hiveBox.clear();

  @override
  bool has(String key) => hiveBox.containsKey(key);

  @override
  Future<void> set(String? key, value) async => hiveBox.put(key, value);

  @override
  Future<void> close() async => hiveBox.close();
}
