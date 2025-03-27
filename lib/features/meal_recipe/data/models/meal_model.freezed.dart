// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealModel _$MealModelFromJson(Map<String, dynamic> json) {
  return _MealModel.fromJson(json);
}

/// @nodoc
mixin _$MealModel {
  String get idMeal => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String? get strInstructions => throw _privateConstructorUsedError;
  String? get strCategory => throw _privateConstructorUsedError;

  /// Serializes this MealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res, MealModel>;
  @useResult
  $Res call(
      {String idMeal,
      String strMeal,
      String? strMealThumb,
      String? strInstructions,
      String? strCategory});
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res, $Val extends MealModel>
    implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealThumb = freezed,
    Object? strInstructions = freezed,
    Object? strCategory = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealModelImplCopyWith<$Res>
    implements $MealModelCopyWith<$Res> {
  factory _$$MealModelImplCopyWith(
          _$MealModelImpl value, $Res Function(_$MealModelImpl) then) =
      __$$MealModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idMeal,
      String strMeal,
      String? strMealThumb,
      String? strInstructions,
      String? strCategory});
}

/// @nodoc
class __$$MealModelImplCopyWithImpl<$Res>
    extends _$MealModelCopyWithImpl<$Res, _$MealModelImpl>
    implements _$$MealModelImplCopyWith<$Res> {
  __$$MealModelImplCopyWithImpl(
      _$MealModelImpl _value, $Res Function(_$MealModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealThumb = freezed,
    Object? strInstructions = freezed,
    Object? strCategory = freezed,
  }) {
    return _then(_$MealModelImpl(
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealModelImpl implements _MealModel {
  _$MealModelImpl(
      {required this.idMeal,
      required this.strMeal,
      required this.strMealThumb,
      this.strInstructions,
      this.strCategory});

  factory _$MealModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealModelImplFromJson(json);

  @override
  final String idMeal;
  @override
  final String strMeal;
  @override
  final String? strMealThumb;
  @override
  final String? strInstructions;
  @override
  final String? strCategory;

  @override
  String toString() {
    return 'MealModel(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb, strInstructions: $strInstructions, strCategory: $strCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealModelImpl &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idMeal, strMeal, strMealThumb, strInstructions, strCategory);

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealModelImplCopyWith<_$MealModelImpl> get copyWith =>
      __$$MealModelImplCopyWithImpl<_$MealModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealModelImplToJson(
      this,
    );
  }
}

abstract class _MealModel implements MealModel {
  factory _MealModel(
      {required final String idMeal,
      required final String strMeal,
      required final String? strMealThumb,
      final String? strInstructions,
      final String? strCategory}) = _$MealModelImpl;

  factory _MealModel.fromJson(Map<String, dynamic> json) =
      _$MealModelImpl.fromJson;

  @override
  String get idMeal;
  @override
  String get strMeal;
  @override
  String? get strMealThumb;
  @override
  String? get strInstructions;
  @override
  String? get strCategory;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealModelImplCopyWith<_$MealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
