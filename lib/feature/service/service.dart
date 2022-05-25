import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';

part 'service_endpoint.dart';

abstract class ServiceMethods {
  Future<List<HistoryInToday>?> fetchItems();
}

class HistoryInTodayService implements ServiceMethods {
  final Dio _dio;

  HistoryInTodayService() : _dio = Dio(BaseOptions(baseUrl: ProjectStrings.url));

  @override
  Future<List<HistoryInToday>?> fetchItems() async {
    try {
      final response = await _dio.get(_ServiceEndPoints.tarihtebugun.rawValue);
      if (response.statusCode == HttpStatus.ok) {
        final _items = response.data;
        if (_items is Map<String, dynamic>) {
          List<HistoryInToday>? items =
              HistoryInTodayAll.fromJson(_items).tarihtebugun;
          inspect(_items);
          return items;
        }
      }
      return [];
    } on DioError catch (e) {
      _ShowDebug.showDioError(e, this);
    }
  }
}

class _ShowDebug {
  static void showDioError<T>(DioError dioError, type) {
    if (kDebugMode) {
      print(dioError.message);
      print('*******************************');
      print(type);
    }
  }
}
