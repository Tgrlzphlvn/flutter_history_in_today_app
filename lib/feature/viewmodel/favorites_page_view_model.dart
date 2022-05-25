
import 'package:flutter/material.dart';

import '../data/cache_manager.dart';
import '../model/history_in_today_model.dart';

class FavoritesPageViewModel extends ChangeNotifier {
  final CacheMetods<HistoryInToday> cacheManager;

  List<HistoryInToday>? items;

  FavoritesPageViewModel(this.cacheManager){
    fetchDatas();
  }


  Future<void> fetchDatas() async {
    await cacheManager.init();
    items = cacheManager.getItems();
  }
}
