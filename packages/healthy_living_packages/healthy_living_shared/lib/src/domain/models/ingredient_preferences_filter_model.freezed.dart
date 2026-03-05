// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_preferences_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientPreferencesFilterModel {

 bool get isPreferred; bool get isAvoided;
/// Create a copy of IngredientPreferencesFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferencesFilterModelCopyWith<IngredientPreferencesFilterModel> get copyWith => _$IngredientPreferencesFilterModelCopyWithImpl<IngredientPreferencesFilterModel>(this as IngredientPreferencesFilterModel, _$identity);

  /// Serializes this IngredientPreferencesFilterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferencesFilterModel&&(identical(other.isPreferred, isPreferred) || other.isPreferred == isPreferred)&&(identical(other.isAvoided, isAvoided) || other.isAvoided == isAvoided));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPreferred,isAvoided);

@override
String toString() {
  return 'IngredientPreferencesFilterModel(isPreferred: $isPreferred, isAvoided: $isAvoided)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferencesFilterModelCopyWith<$Res>  {
  factory $IngredientPreferencesFilterModelCopyWith(IngredientPreferencesFilterModel value, $Res Function(IngredientPreferencesFilterModel) _then) = _$IngredientPreferencesFilterModelCopyWithImpl;
@useResult
$Res call({
 bool isPreferred, bool isAvoided
});




}
/// @nodoc
class _$IngredientPreferencesFilterModelCopyWithImpl<$Res>
    implements $IngredientPreferencesFilterModelCopyWith<$Res> {
  _$IngredientPreferencesFilterModelCopyWithImpl(this._self, this._then);

  final IngredientPreferencesFilterModel _self;
  final $Res Function(IngredientPreferencesFilterModel) _then;

/// Create a copy of IngredientPreferencesFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPreferred = null,Object? isAvoided = null,}) {
  return _then(_self.copyWith(
isPreferred: null == isPreferred ? _self.isPreferred : isPreferred // ignore: cast_nullable_to_non_nullable
as bool,isAvoided: null == isAvoided ? _self.isAvoided : isAvoided // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferencesFilterModel].
extension IngredientPreferencesFilterModelPatterns on IngredientPreferencesFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferencesFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferencesFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferencesFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPreferred,  bool isAvoided)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel() when $default != null:
return $default(_that.isPreferred,_that.isAvoided);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPreferred,  bool isAvoided)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel():
return $default(_that.isPreferred,_that.isAvoided);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPreferred,  bool isAvoided)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferencesFilterModel() when $default != null:
return $default(_that.isPreferred,_that.isAvoided);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientPreferencesFilterModel implements IngredientPreferencesFilterModel {
  const _IngredientPreferencesFilterModel({this.isPreferred = false, this.isAvoided = false});
  factory _IngredientPreferencesFilterModel.fromJson(Map<String, dynamic> json) => _$IngredientPreferencesFilterModelFromJson(json);

@override@JsonKey() final  bool isPreferred;
@override@JsonKey() final  bool isAvoided;

/// Create a copy of IngredientPreferencesFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferencesFilterModelCopyWith<_IngredientPreferencesFilterModel> get copyWith => __$IngredientPreferencesFilterModelCopyWithImpl<_IngredientPreferencesFilterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientPreferencesFilterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferencesFilterModel&&(identical(other.isPreferred, isPreferred) || other.isPreferred == isPreferred)&&(identical(other.isAvoided, isAvoided) || other.isAvoided == isAvoided));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPreferred,isAvoided);

@override
String toString() {
  return 'IngredientPreferencesFilterModel(isPreferred: $isPreferred, isAvoided: $isAvoided)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferencesFilterModelCopyWith<$Res> implements $IngredientPreferencesFilterModelCopyWith<$Res> {
  factory _$IngredientPreferencesFilterModelCopyWith(_IngredientPreferencesFilterModel value, $Res Function(_IngredientPreferencesFilterModel) _then) = __$IngredientPreferencesFilterModelCopyWithImpl;
@override @useResult
$Res call({
 bool isPreferred, bool isAvoided
});




}
/// @nodoc
class __$IngredientPreferencesFilterModelCopyWithImpl<$Res>
    implements _$IngredientPreferencesFilterModelCopyWith<$Res> {
  __$IngredientPreferencesFilterModelCopyWithImpl(this._self, this._then);

  final _IngredientPreferencesFilterModel _self;
  final $Res Function(_IngredientPreferencesFilterModel) _then;

/// Create a copy of IngredientPreferencesFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPreferred = null,Object? isAvoided = null,}) {
  return _then(_IngredientPreferencesFilterModel(
isPreferred: null == isPreferred ? _self.isPreferred : isPreferred // ignore: cast_nullable_to_non_nullable
as bool,isAvoided: null == isAvoided ? _self.isAvoided : isAvoided // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
