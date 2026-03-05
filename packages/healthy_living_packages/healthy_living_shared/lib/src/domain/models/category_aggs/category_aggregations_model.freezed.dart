// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_aggregations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryAggregationsModel {

 List<CategoryAggregationModel> get cleaners; List<CategoryAggregationModel> get personalCare; List<CategoryAggregationModel> get food;
/// Create a copy of CategoryAggregationsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryAggregationsModelCopyWith<CategoryAggregationsModel> get copyWith => _$CategoryAggregationsModelCopyWithImpl<CategoryAggregationsModel>(this as CategoryAggregationsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryAggregationsModel&&const DeepCollectionEquality().equals(other.cleaners, cleaners)&&const DeepCollectionEquality().equals(other.personalCare, personalCare)&&const DeepCollectionEquality().equals(other.food, food));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cleaners),const DeepCollectionEquality().hash(personalCare),const DeepCollectionEquality().hash(food));

@override
String toString() {
  return 'CategoryAggregationsModel(cleaners: $cleaners, personalCare: $personalCare, food: $food)';
}


}

/// @nodoc
abstract mixin class $CategoryAggregationsModelCopyWith<$Res>  {
  factory $CategoryAggregationsModelCopyWith(CategoryAggregationsModel value, $Res Function(CategoryAggregationsModel) _then) = _$CategoryAggregationsModelCopyWithImpl;
@useResult
$Res call({
 List<CategoryAggregationModel> cleaners, List<CategoryAggregationModel> personalCare, List<CategoryAggregationModel> food
});




}
/// @nodoc
class _$CategoryAggregationsModelCopyWithImpl<$Res>
    implements $CategoryAggregationsModelCopyWith<$Res> {
  _$CategoryAggregationsModelCopyWithImpl(this._self, this._then);

  final CategoryAggregationsModel _self;
  final $Res Function(CategoryAggregationsModel) _then;

/// Create a copy of CategoryAggregationsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cleaners = null,Object? personalCare = null,Object? food = null,}) {
  return _then(_self.copyWith(
cleaners: null == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,personalCare: null == personalCare ? _self.personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,food: null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryAggregationsModel].
extension CategoryAggregationsModelPatterns on CategoryAggregationsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryAggregationsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryAggregationsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryAggregationsModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryAggregationsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryAggregationModel> cleaners,  List<CategoryAggregationModel> personalCare,  List<CategoryAggregationModel> food)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryAggregationsModel() when $default != null:
return $default(_that.cleaners,_that.personalCare,_that.food);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryAggregationModel> cleaners,  List<CategoryAggregationModel> personalCare,  List<CategoryAggregationModel> food)  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationsModel():
return $default(_that.cleaners,_that.personalCare,_that.food);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryAggregationModel> cleaners,  List<CategoryAggregationModel> personalCare,  List<CategoryAggregationModel> food)?  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationsModel() when $default != null:
return $default(_that.cleaners,_that.personalCare,_that.food);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryAggregationsModel implements CategoryAggregationsModel {
  const _CategoryAggregationsModel({required final  List<CategoryAggregationModel> cleaners, required final  List<CategoryAggregationModel> personalCare, required final  List<CategoryAggregationModel> food}): _cleaners = cleaners,_personalCare = personalCare,_food = food;
  

 final  List<CategoryAggregationModel> _cleaners;
@override List<CategoryAggregationModel> get cleaners {
  if (_cleaners is EqualUnmodifiableListView) return _cleaners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleaners);
}

 final  List<CategoryAggregationModel> _personalCare;
@override List<CategoryAggregationModel> get personalCare {
  if (_personalCare is EqualUnmodifiableListView) return _personalCare;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalCare);
}

 final  List<CategoryAggregationModel> _food;
@override List<CategoryAggregationModel> get food {
  if (_food is EqualUnmodifiableListView) return _food;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_food);
}


/// Create a copy of CategoryAggregationsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryAggregationsModelCopyWith<_CategoryAggregationsModel> get copyWith => __$CategoryAggregationsModelCopyWithImpl<_CategoryAggregationsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryAggregationsModel&&const DeepCollectionEquality().equals(other._cleaners, _cleaners)&&const DeepCollectionEquality().equals(other._personalCare, _personalCare)&&const DeepCollectionEquality().equals(other._food, _food));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cleaners),const DeepCollectionEquality().hash(_personalCare),const DeepCollectionEquality().hash(_food));

@override
String toString() {
  return 'CategoryAggregationsModel(cleaners: $cleaners, personalCare: $personalCare, food: $food)';
}


}

/// @nodoc
abstract mixin class _$CategoryAggregationsModelCopyWith<$Res> implements $CategoryAggregationsModelCopyWith<$Res> {
  factory _$CategoryAggregationsModelCopyWith(_CategoryAggregationsModel value, $Res Function(_CategoryAggregationsModel) _then) = __$CategoryAggregationsModelCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryAggregationModel> cleaners, List<CategoryAggregationModel> personalCare, List<CategoryAggregationModel> food
});




}
/// @nodoc
class __$CategoryAggregationsModelCopyWithImpl<$Res>
    implements _$CategoryAggregationsModelCopyWith<$Res> {
  __$CategoryAggregationsModelCopyWithImpl(this._self, this._then);

  final _CategoryAggregationsModel _self;
  final $Res Function(_CategoryAggregationsModel) _then;

/// Create a copy of CategoryAggregationsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cleaners = null,Object? personalCare = null,Object? food = null,}) {
  return _then(_CategoryAggregationsModel(
cleaners: null == cleaners ? _self._cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,personalCare: null == personalCare ? _self._personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,food: null == food ? _self._food : food // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,
  ));
}


}

// dart format on
