import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
class MealModel with _$MealModel {
  factory MealModel({
    required String idMeal,
    required String strMeal,
    required String? strMealThumb,
    String? strInstructions,
    String? strCategory,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) => _$MealModelFromJson(json);
}