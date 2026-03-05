// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_universal_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseUniversalCategoriesModel {

 List<BrowseMainCategoryModel>? get personalCare; List<BrowseMainCategoryModel>? get cleaners; List<BrowseMainCategoryModel>? get food;
/// Create a copy of BrowseUniversalCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseUniversalCategoriesModelCopyWith<BrowseUniversalCategoriesModel> get copyWith => _$BrowseUniversalCategoriesModelCopyWithImpl<BrowseUniversalCategoriesModel>(this as BrowseUniversalCategoriesModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseUniversalCategoriesModel&&const DeepCollectionEquality().equals(other.personalCare, personalCare)&&const DeepCollectionEquality().equals(other.cleaners, cleaners)&&const DeepCollectionEquality().equals(other.food, food));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(personalCare),const DeepCollectionEquality().hash(cleaners),const DeepCollectionEquality().hash(food));

@override
String toString() {
  return 'BrowseUniversalCategoriesModel(personalCare: $personalCare, cleaners: $cleaners, food: $food)';
}


}

/// @nodoc
abstract mixin class $BrowseUniversalCategoriesModelCopyWith<$Res>  {
  factory $BrowseUniversalCategoriesModelCopyWith(BrowseUniversalCategoriesModel value, $Res Function(BrowseUniversalCategoriesModel) _then) = _$BrowseUniversalCategoriesModelCopyWithImpl;
@useResult
$Res call({
 List<BrowseMainCategoryModel>? personalCare, List<BrowseMainCategoryModel>? cleaners, List<BrowseMainCategoryModel>? food
});




}
/// @nodoc
class _$BrowseUniversalCategoriesModelCopyWithImpl<$Res>
    implements $BrowseUniversalCategoriesModelCopyWith<$Res> {
  _$BrowseUniversalCategoriesModelCopyWithImpl(this._self, this._then);

  final BrowseUniversalCategoriesModel _self;
  final $Res Function(BrowseUniversalCategoriesModel) _then;

/// Create a copy of BrowseUniversalCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personalCare = freezed,Object? cleaners = freezed,Object? food = freezed,}) {
  return _then(_self.copyWith(
personalCare: freezed == personalCare ? _self.personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,food: freezed == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseUniversalCategoriesModel].
extension BrowseUniversalCategoriesModelPatterns on BrowseUniversalCategoriesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseUniversalCategoriesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseUniversalCategoriesModel value)  $default,){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseUniversalCategoriesModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BrowseMainCategoryModel>? personalCare,  List<BrowseMainCategoryModel>? cleaners,  List<BrowseMainCategoryModel>? food)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel() when $default != null:
return $default(_that.personalCare,_that.cleaners,_that.food);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BrowseMainCategoryModel>? personalCare,  List<BrowseMainCategoryModel>? cleaners,  List<BrowseMainCategoryModel>? food)  $default,) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel():
return $default(_that.personalCare,_that.cleaners,_that.food);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BrowseMainCategoryModel>? personalCare,  List<BrowseMainCategoryModel>? cleaners,  List<BrowseMainCategoryModel>? food)?  $default,) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesModel() when $default != null:
return $default(_that.personalCare,_that.cleaners,_that.food);case _:
  return null;

}
}

}

/// @nodoc


class _BrowseUniversalCategoriesModel implements BrowseUniversalCategoriesModel {
  const _BrowseUniversalCategoriesModel({final  List<BrowseMainCategoryModel>? personalCare, final  List<BrowseMainCategoryModel>? cleaners, final  List<BrowseMainCategoryModel>? food}): _personalCare = personalCare,_cleaners = cleaners,_food = food;
  

 final  List<BrowseMainCategoryModel>? _personalCare;
@override List<BrowseMainCategoryModel>? get personalCare {
  final value = _personalCare;
  if (value == null) return null;
  if (_personalCare is EqualUnmodifiableListView) return _personalCare;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrowseMainCategoryModel>? _cleaners;
@override List<BrowseMainCategoryModel>? get cleaners {
  final value = _cleaners;
  if (value == null) return null;
  if (_cleaners is EqualUnmodifiableListView) return _cleaners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrowseMainCategoryModel>? _food;
@override List<BrowseMainCategoryModel>? get food {
  final value = _food;
  if (value == null) return null;
  if (_food is EqualUnmodifiableListView) return _food;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseUniversalCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseUniversalCategoriesModelCopyWith<_BrowseUniversalCategoriesModel> get copyWith => __$BrowseUniversalCategoriesModelCopyWithImpl<_BrowseUniversalCategoriesModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseUniversalCategoriesModel&&const DeepCollectionEquality().equals(other._personalCare, _personalCare)&&const DeepCollectionEquality().equals(other._cleaners, _cleaners)&&const DeepCollectionEquality().equals(other._food, _food));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_personalCare),const DeepCollectionEquality().hash(_cleaners),const DeepCollectionEquality().hash(_food));

@override
String toString() {
  return 'BrowseUniversalCategoriesModel(personalCare: $personalCare, cleaners: $cleaners, food: $food)';
}


}

/// @nodoc
abstract mixin class _$BrowseUniversalCategoriesModelCopyWith<$Res> implements $BrowseUniversalCategoriesModelCopyWith<$Res> {
  factory _$BrowseUniversalCategoriesModelCopyWith(_BrowseUniversalCategoriesModel value, $Res Function(_BrowseUniversalCategoriesModel) _then) = __$BrowseUniversalCategoriesModelCopyWithImpl;
@override @useResult
$Res call({
 List<BrowseMainCategoryModel>? personalCare, List<BrowseMainCategoryModel>? cleaners, List<BrowseMainCategoryModel>? food
});




}
/// @nodoc
class __$BrowseUniversalCategoriesModelCopyWithImpl<$Res>
    implements _$BrowseUniversalCategoriesModelCopyWith<$Res> {
  __$BrowseUniversalCategoriesModelCopyWithImpl(this._self, this._then);

  final _BrowseUniversalCategoriesModel _self;
  final $Res Function(_BrowseUniversalCategoriesModel) _then;

/// Create a copy of BrowseUniversalCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personalCare = freezed,Object? cleaners = freezed,Object? food = freezed,}) {
  return _then(_BrowseUniversalCategoriesModel(
personalCare: freezed == personalCare ? _self._personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,cleaners: freezed == cleaners ? _self._cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,food: freezed == food ? _self._food : food // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryModel>?,
  ));
}


}

// dart format on
