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
mixin _$MealEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String mealId) fetchMealDetails,
    required TResult Function() resetToLastLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String mealId)? fetchMealDetails,
    TResult? Function()? resetToLastLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String category)? filterByCategory,
    TResult Function(String mealId)? fetchMealDetails,
    TResult Function()? resetToLastLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FetchMealDetails value) fetchMealDetails,
    required TResult Function(_ResetToLastLoaded value) resetToLastLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_FetchMealDetails value)? fetchMealDetails,
    TResult? Function(_ResetToLastLoaded value)? resetToLastLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FetchMealDetails value)? fetchMealDetails,
    TResult Function(_ResetToLastLoaded value)? resetToLastLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealEventCopyWith<$Res> {
  factory $MealEventCopyWith(MealEvent value, $Res Function(MealEvent) then) =
      _$MealEventCopyWithImpl<$Res, MealEvent>;
}

/// @nodoc
class _$MealEventCopyWithImpl<$Res, $Val extends MealEvent>
    implements $MealEventCopyWith<$Res> {
  _$MealEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$MealEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MealEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String mealId) fetchMealDetails,
    required TResult Function() resetToLastLoaded,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String mealId)? fetchMealDetails,
    TResult? Function()? resetToLastLoaded,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String category)? filterByCategory,
    TResult Function(String mealId)? fetchMealDetails,
    TResult Function()? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FetchMealDetails value) fetchMealDetails,
    required TResult Function(_ResetToLastLoaded value) resetToLastLoaded,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_FetchMealDetails value)? fetchMealDetails,
    TResult? Function(_ResetToLastLoaded value)? resetToLastLoaded,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FetchMealDetails value)? fetchMealDetails,
    TResult Function(_ResetToLastLoaded value)? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements MealEvent {
  const factory _Search(final String query) = _$SearchImpl;

  String get query;

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByCategoryImplCopyWith<$Res> {
  factory _$$FilterByCategoryImplCopyWith(_$FilterByCategoryImpl value,
          $Res Function(_$FilterByCategoryImpl) then) =
      __$$FilterByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterByCategoryImplCopyWithImpl<$Res>
    extends _$MealEventCopyWithImpl<$Res, _$FilterByCategoryImpl>
    implements _$$FilterByCategoryImplCopyWith<$Res> {
  __$$FilterByCategoryImplCopyWithImpl(_$FilterByCategoryImpl _value,
      $Res Function(_$FilterByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterByCategoryImpl implements _FilterByCategory {
  const _$FilterByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'MealEvent.filterByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      __$$FilterByCategoryImplCopyWithImpl<_$FilterByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String mealId) fetchMealDetails,
    required TResult Function() resetToLastLoaded,
  }) {
    return filterByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String mealId)? fetchMealDetails,
    TResult? Function()? resetToLastLoaded,
  }) {
    return filterByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String category)? filterByCategory,
    TResult Function(String mealId)? fetchMealDetails,
    TResult Function()? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FetchMealDetails value) fetchMealDetails,
    required TResult Function(_ResetToLastLoaded value) resetToLastLoaded,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_FetchMealDetails value)? fetchMealDetails,
    TResult? Function(_ResetToLastLoaded value)? resetToLastLoaded,
  }) {
    return filterByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FetchMealDetails value)? fetchMealDetails,
    TResult Function(_ResetToLastLoaded value)? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class _FilterByCategory implements MealEvent {
  const factory _FilterByCategory(final String category) =
      _$FilterByCategoryImpl;

  String get category;

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMealDetailsImplCopyWith<$Res> {
  factory _$$FetchMealDetailsImplCopyWith(_$FetchMealDetailsImpl value,
          $Res Function(_$FetchMealDetailsImpl) then) =
      __$$FetchMealDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mealId});
}

/// @nodoc
class __$$FetchMealDetailsImplCopyWithImpl<$Res>
    extends _$MealEventCopyWithImpl<$Res, _$FetchMealDetailsImpl>
    implements _$$FetchMealDetailsImplCopyWith<$Res> {
  __$$FetchMealDetailsImplCopyWithImpl(_$FetchMealDetailsImpl _value,
      $Res Function(_$FetchMealDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealId = null,
  }) {
    return _then(_$FetchMealDetailsImpl(
      null == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchMealDetailsImpl implements _FetchMealDetails {
  const _$FetchMealDetailsImpl(this.mealId);

  @override
  final String mealId;

  @override
  String toString() {
    return 'MealEvent.fetchMealDetails(mealId: $mealId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMealDetailsImpl &&
            (identical(other.mealId, mealId) || other.mealId == mealId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mealId);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMealDetailsImplCopyWith<_$FetchMealDetailsImpl> get copyWith =>
      __$$FetchMealDetailsImplCopyWithImpl<_$FetchMealDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String mealId) fetchMealDetails,
    required TResult Function() resetToLastLoaded,
  }) {
    return fetchMealDetails(mealId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String mealId)? fetchMealDetails,
    TResult? Function()? resetToLastLoaded,
  }) {
    return fetchMealDetails?.call(mealId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String category)? filterByCategory,
    TResult Function(String mealId)? fetchMealDetails,
    TResult Function()? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (fetchMealDetails != null) {
      return fetchMealDetails(mealId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FetchMealDetails value) fetchMealDetails,
    required TResult Function(_ResetToLastLoaded value) resetToLastLoaded,
  }) {
    return fetchMealDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_FetchMealDetails value)? fetchMealDetails,
    TResult? Function(_ResetToLastLoaded value)? resetToLastLoaded,
  }) {
    return fetchMealDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FetchMealDetails value)? fetchMealDetails,
    TResult Function(_ResetToLastLoaded value)? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (fetchMealDetails != null) {
      return fetchMealDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchMealDetails implements MealEvent {
  const factory _FetchMealDetails(final String mealId) = _$FetchMealDetailsImpl;

  String get mealId;

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMealDetailsImplCopyWith<_$FetchMealDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetToLastLoadedImplCopyWith<$Res> {
  factory _$$ResetToLastLoadedImplCopyWith(_$ResetToLastLoadedImpl value,
          $Res Function(_$ResetToLastLoadedImpl) then) =
      __$$ResetToLastLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetToLastLoadedImplCopyWithImpl<$Res>
    extends _$MealEventCopyWithImpl<$Res, _$ResetToLastLoadedImpl>
    implements _$$ResetToLastLoadedImplCopyWith<$Res> {
  __$$ResetToLastLoadedImplCopyWithImpl(_$ResetToLastLoadedImpl _value,
      $Res Function(_$ResetToLastLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetToLastLoadedImpl implements _ResetToLastLoaded {
  const _$ResetToLastLoadedImpl();

  @override
  String toString() {
    return 'MealEvent.resetToLastLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetToLastLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String mealId) fetchMealDetails,
    required TResult Function() resetToLastLoaded,
  }) {
    return resetToLastLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String mealId)? fetchMealDetails,
    TResult? Function()? resetToLastLoaded,
  }) {
    return resetToLastLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String category)? filterByCategory,
    TResult Function(String mealId)? fetchMealDetails,
    TResult Function()? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (resetToLastLoaded != null) {
      return resetToLastLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FetchMealDetails value) fetchMealDetails,
    required TResult Function(_ResetToLastLoaded value) resetToLastLoaded,
  }) {
    return resetToLastLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_FetchMealDetails value)? fetchMealDetails,
    TResult? Function(_ResetToLastLoaded value)? resetToLastLoaded,
  }) {
    return resetToLastLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FetchMealDetails value)? fetchMealDetails,
    TResult Function(_ResetToLastLoaded value)? resetToLastLoaded,
    required TResult orElse(),
  }) {
    if (resetToLastLoaded != null) {
      return resetToLastLoaded(this);
    }
    return orElse();
  }
}

abstract class _ResetToLastLoaded implements MealEvent {
  const factory _ResetToLastLoaded() = _$ResetToLastLoadedImpl;
}
