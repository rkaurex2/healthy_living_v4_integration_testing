// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_ingredient_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActiveIngredientRequestModel {

 String get ingredient; String get percent;
/// Create a copy of ActiveIngredientRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveIngredientRequestModelCopyWith<ActiveIngredientRequestModel> get copyWith => _$ActiveIngredientRequestModelCopyWithImpl<ActiveIngredientRequestModel>(this as ActiveIngredientRequestModel, _$identity);

  /// Serializes this ActiveIngredientRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveIngredientRequestModel&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredient,percent);

@override
String toString() {
  return 'ActiveIngredientRequestModel(ingredient: $ingredient, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $ActiveIngredientRequestModelCopyWith<$Res>  {
  factory $ActiveIngredientRequestModelCopyWith(ActiveIngredientRequestModel value, $Res Function(ActiveIngredientRequestModel) _then) = _$ActiveIngredientRequestModelCopyWithImpl;
@useResult
$Res call({
 String ingredient, String percent
});




}
/// @nodoc
class _$ActiveIngredientRequestModelCopyWithImpl<$Res>
    implements $ActiveIngredientRequestModelCopyWith<$Res> {
  _$ActiveIngredientRequestModelCopyWithImpl(this._self, this._then);

  final ActiveIngredientRequestModel _self;
  final $Res Function(ActiveIngredientRequestModel) _then;

/// Create a copy of ActiveIngredientRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredient = null,Object? percent = null,}) {
  return _then(_self.copyWith(
ingredient: null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveIngredientRequestModel].
extension ActiveIngredientRequestModelPatterns on ActiveIngredientRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveIngredientRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveIngredientRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveIngredientRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ingredient,  String percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel() when $default != null:
return $default(_that.ingredient,_that.percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ingredient,  String percent)  $default,) {final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel():
return $default(_that.ingredient,_that.percent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ingredient,  String percent)?  $default,) {final _that = this;
switch (_that) {
case _ActiveIngredientRequestModel() when $default != null:
return $default(_that.ingredient,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActiveIngredientRequestModel extends ActiveIngredientRequestModel {
  const _ActiveIngredientRequestModel({required this.ingredient, required this.percent}): super._();
  factory _ActiveIngredientRequestModel.fromJson(Map<String, dynamic> json) => _$ActiveIngredientRequestModelFromJson(json);

@override final  String ingredient;
@override final  String percent;

/// Create a copy of ActiveIngredientRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveIngredientRequestModelCopyWith<_ActiveIngredientRequestModel> get copyWith => __$ActiveIngredientRequestModelCopyWithImpl<_ActiveIngredientRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveIngredientRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveIngredientRequestModel&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredient,percent);

@override
String toString() {
  return 'ActiveIngredientRequestModel(ingredient: $ingredient, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$ActiveIngredientRequestModelCopyWith<$Res> implements $ActiveIngredientRequestModelCopyWith<$Res> {
  factory _$ActiveIngredientRequestModelCopyWith(_ActiveIngredientRequestModel value, $Res Function(_ActiveIngredientRequestModel) _then) = __$ActiveIngredientRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String ingredient, String percent
});




}
/// @nodoc
class __$ActiveIngredientRequestModelCopyWithImpl<$Res>
    implements _$ActiveIngredientRequestModelCopyWith<$Res> {
  __$ActiveIngredientRequestModelCopyWithImpl(this._self, this._then);

  final _ActiveIngredientRequestModel _self;
  final $Res Function(_ActiveIngredientRequestModel) _then;

/// Create a copy of ActiveIngredientRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredient = null,Object? percent = null,}) {
  return _then(_ActiveIngredientRequestModel(
ingredient: null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
