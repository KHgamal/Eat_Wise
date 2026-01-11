// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************


class MealTrackModelAdapter extends TypeAdapter<MealTrackModel> {
  @override
  final int typeId = 0;

  @override
  MealTrackModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealTrackModel(
      id: fields[0] as String,
      name: fields[1] as String,
      calories: fields[2] as int,
      time: fields[3] as DateTime,
      mealType: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MealTrackModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.calories)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.mealType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealTrackModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}