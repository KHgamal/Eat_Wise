// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealTrackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealTrackEventCopyWith<$Res> {
  factory $MealTrackEventCopyWith(
          MealTrackEvent value, $Res Function(MealTrackEvent) then) =
      _$MealTrackEventCopyWithImpl<$Res, MealTrackEvent>;
}

/// @nodoc
class _$MealTrackEventCopyWithImpl<$Res, $Val extends MealTrackEvent>
    implements $MealTrackEventCopyWith<$Res> {
  _$MealTrackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddMealImplCopyWith<$Res> {
  factory _$$AddMealImplCopyWith(
          _$AddMealImpl value, $Res Function(_$AddMealImpl) then) =
      __$$AddMealImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MealTrack meal});
}

/// @nodoc
class __$$AddMealImplCopyWithImpl<$Res>
    extends _$MealTrackEventCopyWithImpl<$Res, _$AddMealImpl>
    implements _$$AddMealImplCopyWith<$Res> {
  __$$AddMealImplCopyWithImpl(
      _$AddMealImpl _value, $Res Function(_$AddMealImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_$AddMealImpl(
      null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealTrack,
    ));
  }
}

/// @nodoc

class _$AddMealImpl implements _AddMeal {
  const _$AddMealImpl(this.meal);

  @override
  final MealTrack meal;

  @override
  String toString() {
    return 'MealTrackEvent.addMeal(meal: $meal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMealImpl &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meal);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      __$$AddMealImplCopyWithImpl<_$AddMealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) {
    return addMeal(meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return addMeal?.call(meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) {
    return addMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) {
    return addMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(this);
    }
    return orElse();
  }
}

abstract class _AddMeal implements MealTrackEvent {
  const factory _AddMeal(final MealTrack meal) = _$AddMealImpl;

  MealTrack get meal;

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMealImplCopyWith<$Res> {
  factory _$$DeleteMealImplCopyWith(
          _$DeleteMealImpl value, $Res Function(_$DeleteMealImpl) then) =
      __$$DeleteMealImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteMealImplCopyWithImpl<$Res>
    extends _$MealTrackEventCopyWithImpl<$Res, _$DeleteMealImpl>
    implements _$$DeleteMealImplCopyWith<$Res> {
  __$$DeleteMealImplCopyWithImpl(
      _$DeleteMealImpl _value, $Res Function(_$DeleteMealImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteMealImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMealImpl implements _DeleteMeal {
  const _$DeleteMealImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MealTrackEvent.deleteMeal(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMealImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMealImplCopyWith<_$DeleteMealImpl> get copyWith =>
      __$$DeleteMealImplCopyWithImpl<_$DeleteMealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) {
    return deleteMeal(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return deleteMeal?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (deleteMeal != null) {
      return deleteMeal(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) {
    return deleteMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) {
    return deleteMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (deleteMeal != null) {
      return deleteMeal(this);
    }
    return orElse();
  }
}

abstract class _DeleteMeal implements MealTrackEvent {
  const factory _DeleteMeal(final String id) = _$DeleteMealImpl;

  String get id;

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMealImplCopyWith<_$DeleteMealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMealsImplCopyWith<$Res> {
  factory _$$LoadMealsImplCopyWith(
          _$LoadMealsImpl value, $Res Function(_$LoadMealsImpl) then) =
      __$$LoadMealsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMealsImplCopyWithImpl<$Res>
    extends _$MealTrackEventCopyWithImpl<$Res, _$LoadMealsImpl>
    implements _$$LoadMealsImplCopyWith<$Res> {
  __$$LoadMealsImplCopyWithImpl(
      _$LoadMealsImpl _value, $Res Function(_$LoadMealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMealsImpl implements _LoadMeals {
  const _$LoadMealsImpl();

  @override
  String toString() {
    return 'MealTrackEvent.loadMeals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMealsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) {
    return loadMeals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return loadMeals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (loadMeals != null) {
      return loadMeals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) {
    return loadMeals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) {
    return loadMeals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (loadMeals != null) {
      return loadMeals(this);
    }
    return orElse();
  }
}

abstract class _LoadMeals implements MealTrackEvent {
  const factory _LoadMeals() = _$LoadMealsImpl;
}

/// @nodoc
abstract class _$$SortMealsImplCopyWith<$Res> {
  factory _$$SortMealsImplCopyWith(
          _$SortMealsImpl value, $Res Function(_$SortMealsImpl) then) =
      __$$SortMealsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sortBy});
}

/// @nodoc
class __$$SortMealsImplCopyWithImpl<$Res>
    extends _$MealTrackEventCopyWithImpl<$Res, _$SortMealsImpl>
    implements _$$SortMealsImplCopyWith<$Res> {
  __$$SortMealsImplCopyWithImpl(
      _$SortMealsImpl _value, $Res Function(_$SortMealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_$SortMealsImpl(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortMealsImpl implements _SortMeals {
  const _$SortMealsImpl(this.sortBy);

  @override
  final String sortBy;

  @override
  String toString() {
    return 'MealTrackEvent.sortMeals(sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortMealsImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortMealsImplCopyWith<_$SortMealsImpl> get copyWith =>
      __$$SortMealsImplCopyWithImpl<_$SortMealsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) {
    return sortMeals(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return sortMeals?.call(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (sortMeals != null) {
      return sortMeals(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) {
    return sortMeals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) {
    return sortMeals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (sortMeals != null) {
      return sortMeals(this);
    }
    return orElse();
  }
}

abstract class _SortMeals implements MealTrackEvent {
  const factory _SortMeals(final String sortBy) = _$SortMealsImpl;

  String get sortBy;

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortMealsImplCopyWith<_$SortMealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDateImplCopyWith<$Res> {
  factory _$$SelectDateImplCopyWith(
          _$SelectDateImpl value, $Res Function(_$SelectDateImpl) then) =
      __$$SelectDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SelectDateImplCopyWithImpl<$Res>
    extends _$MealTrackEventCopyWithImpl<$Res, _$SelectDateImpl>
    implements _$$SelectDateImplCopyWith<$Res> {
  __$$SelectDateImplCopyWithImpl(
      _$SelectDateImpl _value, $Res Function(_$SelectDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$SelectDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateImpl implements _SelectDate {
  const _$SelectDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MealTrackEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      __$$SelectDateImplCopyWithImpl<_$SelectDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealTrack meal) addMeal,
    required TResult Function(String id) deleteMeal,
    required TResult Function() loadMeals,
    required TResult Function(String sortBy) sortMeals,
    required TResult Function(DateTime date) selectDate,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealTrack meal)? addMeal,
    TResult? Function(String id)? deleteMeal,
    TResult? Function()? loadMeals,
    TResult? Function(String sortBy)? sortMeals,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealTrack meal)? addMeal,
    TResult Function(String id)? deleteMeal,
    TResult Function()? loadMeals,
    TResult Function(String sortBy)? sortMeals,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_LoadMeals value) loadMeals,
    required TResult Function(_SortMeals value) sortMeals,
    required TResult Function(_SelectDate value) selectDate,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_LoadMeals value)? loadMeals,
    TResult? Function(_SortMeals value)? sortMeals,
    TResult? Function(_SelectDate value)? selectDate,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_LoadMeals value)? loadMeals,
    TResult Function(_SortMeals value)? sortMeals,
    TResult Function(_SelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class _SelectDate implements MealTrackEvent {
  const factory _SelectDate(final DateTime date) = _$SelectDateImpl;

  DateTime get date;

  /// Create a copy of MealTrackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
