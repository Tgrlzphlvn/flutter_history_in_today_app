import 'package:flutter_history_in_today_v7/product/constants/strings.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'history_in_today_model.g.dart';

class HistoryInTodayAll {
  bool? success;
  String? status;
  String? pagecreatedate;
  List<HistoryInToday>? tarihtebugun;

  HistoryInTodayAll(
      {this.success, this.status, this.pagecreatedate, this.tarihtebugun});

  HistoryInTodayAll.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    pagecreatedate = json['pagecreatedate'];
    if (json['tarihtebugun'] != null) {
      tarihtebugun = <HistoryInToday>[];
      json['tarihtebugun'].forEach((v) {
        tarihtebugun!.add(HistoryInToday.fromJson(v));
      });
    }
  }
}

@HiveType(typeId: ProjectStrings.historyInTodayTypeId)
class HistoryInToday {
  @HiveField(0)
  String? gun;
  @HiveField(1)
  String? ay;
  @HiveField(2)
  String? yil;
  @HiveField(3)
  String? durum;
  @HiveField(4)
  String? olay;

  HistoryInToday({this.gun, this.ay, this.yil, this.durum, this.olay});

  HistoryInToday.fromJson(Map<String, dynamic> json) {
    gun = json['Gun'];
    ay = json['Ay'];
    yil = json['Yil'];
    durum = json['Durum'];
    olay = json['Olay'];
  }
}
