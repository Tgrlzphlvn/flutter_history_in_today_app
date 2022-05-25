import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class CacheMetods<T> {
  final String key;
  Box<HistoryInToday>? _box;

  CacheMetods(this.key);

  Future<void> init() async {
    registerAdapters();
    if (!(_box?.isOpen ?? false)) {
      _box = await Hive.openBox(key);
    }
  }

  void registerAdapters();

  Future<void> putItem(int index, T item);

  Future<void> deleteItem(int index);

  List<T>? getItems();
}

class CacheManager extends CacheMetods<HistoryInToday> {
  CacheManager(String key) : super(key);

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(ProjectStrings.historyInTodayTypeId)) {
      Hive.registerAdapter(HistoryInTodayAdapter());
    }
  }

  @override
  Future<void> putItem(int index, item) async {
    await _box?.put(index, item);
  }

  @override
  Future<void> deleteItem(int index) async {
    await _box?.deleteAt(index);
  }

  @override
  List<HistoryInToday>? getItems() {
    return _box?.values.toList();
  }
}
