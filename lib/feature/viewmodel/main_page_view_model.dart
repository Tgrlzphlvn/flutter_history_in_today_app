import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/feature/data/cache_manager.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/feature/service/service.dart';


class MainPageViewModel extends ChangeNotifier {
  final ServiceMethods mainService;
  final CacheMetods<HistoryInToday> cacheMetods;
  List<HistoryInToday>? items;

  bool isLoading = false;

  MainPageViewModel(this.mainService, this.cacheMetods) {
    _fetchItems();
    _cacheInit();
  }

  void _cacheInit() async {
    await cacheMetods.init();
  }

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> _fetchItems() async {
    _changeLoading();
    items = await mainService.fetchItems();
    _changeLoading();
  }
}
