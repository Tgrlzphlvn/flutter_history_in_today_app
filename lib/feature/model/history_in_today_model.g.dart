// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_in_today_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistoryInTodayAdapter extends TypeAdapter<HistoryInToday> {
  @override
  final int typeId = 1;

  @override
  HistoryInToday read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistoryInToday(
      gun: fields[0] as String?,
      ay: fields[1] as String?,
      yil: fields[2] as String?,
      durum: fields[3] as String?,
      olay: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HistoryInToday obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.gun)
      ..writeByte(1)
      ..write(obj.ay)
      ..writeByte(2)
      ..write(obj.yil)
      ..writeByte(3)
      ..write(obj.durum)
      ..writeByte(4)
      ..write(obj.olay);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryInTodayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
