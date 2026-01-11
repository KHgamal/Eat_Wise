// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealTrackEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealTrackEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealTrackEvent()';
}


}

/// @nodoc
class $MealTrackEventCopyWith<$Res>  {
$MealTrackEventCopyWith(MealTrackEvent _, $Res Function(MealTrackEvent) __);
}


/// Adds pattern-matching-related methods to [MealTrackEvent].
extension MealTrackEventPatterns on MealTrackEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddMeal value)?  addMeal,TResult Function( _DeleteMeal value)?  deleteMeal,TResult Function( _LoadMeals value)?  loadMeals,TResult Function( _SelectDate value)?  selectDate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddMeal() when addMeal != null:
return addMeal(_that);case _DeleteMeal() when deleteMeal != null:
return deleteMeal(_that);case _LoadMeals() when loadMeals != null:
return loadMeals(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddMeal value)  addMeal,required TResult Function( _DeleteMeal value)  deleteMeal,required TResult Function( _LoadMeals value)  loadMeals,required TResult Function( _SelectDate value)  selectDate,}){
final _that = this;
switch (_that) {
case _AddMeal():
return addMeal(_that);case _DeleteMeal():
return deleteMeal(_that);case _LoadMeals():
return loadMeals(_that);case _SelectDate():
return selectDate(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddMeal value)?  addMeal,TResult? Function( _DeleteMeal value)?  deleteMeal,TResult? Function( _LoadMeals value)?  loadMeals,TResult? Function( _SelectDate value)?  selectDate,}){
final _that = this;
switch (_that) {
case _AddMeal() when addMeal != null:
return addMeal(_that);case _DeleteMeal() when deleteMeal != null:
return deleteMeal(_that);case _LoadMeals() when loadMeals != null:
return loadMeals(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MealTrack meal)?  addMeal,TResult Function( String id)?  deleteMeal,TResult Function()?  loadMeals,TResult Function( DateTime date)?  selectDate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddMeal() when addMeal != null:
return addMeal(_that.meal);case _DeleteMeal() when deleteMeal != null:
return deleteMeal(_that.id);case _LoadMeals() when loadMeals != null:
return loadMeals();case _SelectDate() when selectDate != null:
return selectDate(_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MealTrack meal)  addMeal,required TResult Function( String id)  deleteMeal,required TResult Function()  loadMeals,required TResult Function( DateTime date)  selectDate,}) {final _that = this;
switch (_that) {
case _AddMeal():
return addMeal(_that.meal);case _DeleteMeal():
return deleteMeal(_that.id);case _LoadMeals():
return loadMeals();case _SelectDate():
return selectDate(_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MealTrack meal)?  addMeal,TResult? Function( String id)?  deleteMeal,TResult? Function()?  loadMeals,TResult? Function( DateTime date)?  selectDate,}) {final _that = this;
switch (_that) {
case _AddMeal() when addMeal != null:
return addMeal(_that.meal);case _DeleteMeal() when deleteMeal != null:
return deleteMeal(_that.id);case _LoadMeals() when loadMeals != null:
return loadMeals();case _SelectDate() when selectDate != null:
return selectDate(_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _AddMeal implements MealTrackEvent {
  const _AddMeal(this.meal);
  

 final  MealTrack meal;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMealCopyWith<_AddMeal> get copyWith => __$AddMealCopyWithImpl<_AddMeal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMeal&&(identical(other.meal, meal) || other.meal == meal));
}


@override
int get hashCode => Object.hash(runtimeType,meal);

@override
String toString() {
  return 'MealTrackEvent.addMeal(meal: $meal)';
}


}

/// @nodoc
abstract mixin class _$AddMealCopyWith<$Res> implements $MealTrackEventCopyWith<$Res> {
  factory _$AddMealCopyWith(_AddMeal value, $Res Function(_AddMeal) _then) = __$AddMealCopyWithImpl;
@useResult
$Res call({
 MealTrack meal
});




}
/// @nodoc
class __$AddMealCopyWithImpl<$Res>
    implements _$AddMealCopyWith<$Res> {
  __$AddMealCopyWithImpl(this._self, this._then);

  final _AddMeal _self;
  final $Res Function(_AddMeal) _then;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meal = null,}) {
  return _then(_AddMeal(
null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as MealTrack,
  ));
}


}

/// @nodoc


class _DeleteMeal implements MealTrackEvent {
  const _DeleteMeal(this.id);
  

 final  String id;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMealCopyWith<_DeleteMeal> get copyWith => __$DeleteMealCopyWithImpl<_DeleteMeal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMeal&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MealTrackEvent.deleteMeal(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteMealCopyWith<$Res> implements $MealTrackEventCopyWith<$Res> {
  factory _$DeleteMealCopyWith(_DeleteMeal value, $Res Function(_DeleteMeal) _then) = __$DeleteMealCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteMealCopyWithImpl<$Res>
    implements _$DeleteMealCopyWith<$Res> {
  __$DeleteMealCopyWithImpl(this._self, this._then);

  final _DeleteMeal _self;
  final $Res Function(_DeleteMeal) _then;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteMeal(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadMeals implements MealTrackEvent {
  const _LoadMeals();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMeals);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealTrackEvent.loadMeals()';
}


}




/// @nodoc


class _SelectDate implements MealTrackEvent {
  const _SelectDate(this.date);
  

 final  DateTime date;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectDateCopyWith<_SelectDate> get copyWith => __$SelectDateCopyWithImpl<_SelectDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'MealTrackEvent.selectDate(date: $date)';
}


}

/// @nodoc
abstract mixin class _$SelectDateCopyWith<$Res> implements $MealTrackEventCopyWith<$Res> {
  factory _$SelectDateCopyWith(_SelectDate value, $Res Function(_SelectDate) _then) = __$SelectDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$SelectDateCopyWithImpl<$Res>
    implements _$SelectDateCopyWith<$Res> {
  __$SelectDateCopyWithImpl(this._self, this._then);

  final _SelectDate _self;
  final $Res Function(_SelectDate) _then;

/// Create a copy of MealTrackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_SelectDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
