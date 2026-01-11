// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealTrackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealTrackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealTrackState()';
}


}

/// @nodoc
class $MealTrackStateCopyWith<$Res>  {
$MealTrackStateCopyWith(MealTrackState _, $Res Function(MealTrackState) __);
}


/// Adds pattern-matching-related methods to [MealTrackState].
extension MealTrackStatePatterns on MealTrackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MealTrack> breakfastMeals,  List<MealTrack> lunchMeals,  List<MealTrack> dinnerMeals,  int totalCalories,  DateTime selectedDate)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.breakfastMeals,_that.lunchMeals,_that.dinnerMeals,_that.totalCalories,_that.selectedDate);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MealTrack> breakfastMeals,  List<MealTrack> lunchMeals,  List<MealTrack> dinnerMeals,  int totalCalories,  DateTime selectedDate)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.breakfastMeals,_that.lunchMeals,_that.dinnerMeals,_that.totalCalories,_that.selectedDate);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MealTrack> breakfastMeals,  List<MealTrack> lunchMeals,  List<MealTrack> dinnerMeals,  int totalCalories,  DateTime selectedDate)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.breakfastMeals,_that.lunchMeals,_that.dinnerMeals,_that.totalCalories,_that.selectedDate);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MealTrackState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealTrackState.initial()';
}


}




/// @nodoc


class _Loading implements MealTrackState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealTrackState.loading()';
}


}




/// @nodoc


class _Loaded implements MealTrackState {
  const _Loaded({required final  List<MealTrack> breakfastMeals, required final  List<MealTrack> lunchMeals, required final  List<MealTrack> dinnerMeals, required this.totalCalories, required this.selectedDate}): _breakfastMeals = breakfastMeals,_lunchMeals = lunchMeals,_dinnerMeals = dinnerMeals;
  

 final  List<MealTrack> _breakfastMeals;
 List<MealTrack> get breakfastMeals {
  if (_breakfastMeals is EqualUnmodifiableListView) return _breakfastMeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breakfastMeals);
}

 final  List<MealTrack> _lunchMeals;
 List<MealTrack> get lunchMeals {
  if (_lunchMeals is EqualUnmodifiableListView) return _lunchMeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lunchMeals);
}

 final  List<MealTrack> _dinnerMeals;
 List<MealTrack> get dinnerMeals {
  if (_dinnerMeals is EqualUnmodifiableListView) return _dinnerMeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dinnerMeals);
}

 final  int totalCalories;
 final  DateTime selectedDate;

/// Create a copy of MealTrackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._breakfastMeals, _breakfastMeals)&&const DeepCollectionEquality().equals(other._lunchMeals, _lunchMeals)&&const DeepCollectionEquality().equals(other._dinnerMeals, _dinnerMeals)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_breakfastMeals),const DeepCollectionEquality().hash(_lunchMeals),const DeepCollectionEquality().hash(_dinnerMeals),totalCalories,selectedDate);

@override
String toString() {
  return 'MealTrackState.loaded(breakfastMeals: $breakfastMeals, lunchMeals: $lunchMeals, dinnerMeals: $dinnerMeals, totalCalories: $totalCalories, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MealTrackStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<MealTrack> breakfastMeals, List<MealTrack> lunchMeals, List<MealTrack> dinnerMeals, int totalCalories, DateTime selectedDate
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MealTrackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? breakfastMeals = null,Object? lunchMeals = null,Object? dinnerMeals = null,Object? totalCalories = null,Object? selectedDate = null,}) {
  return _then(_Loaded(
breakfastMeals: null == breakfastMeals ? _self._breakfastMeals : breakfastMeals // ignore: cast_nullable_to_non_nullable
as List<MealTrack>,lunchMeals: null == lunchMeals ? _self._lunchMeals : lunchMeals // ignore: cast_nullable_to_non_nullable
as List<MealTrack>,dinnerMeals: null == dinnerMeals ? _self._dinnerMeals : dinnerMeals // ignore: cast_nullable_to_non_nullable
as List<MealTrack>,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _Error implements MealTrackState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of MealTrackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MealTrackState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MealTrackStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of MealTrackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
