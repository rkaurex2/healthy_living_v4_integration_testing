// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_info_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientInfoRequestModel {

 String get id;
/// Create a copy of IngredientInfoRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientInfoRequestModelCopyWith<IngredientInfoRequestModel> get copyWith => _$IngredientInfoRequestModelCopyWithImpl<IngredientInfoRequestModel>(this as IngredientInfoRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientInfoRequestModel&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IngredientInfoRequestModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $IngredientInfoRequestModelCopyWith<$Res>  {
  factory $IngredientInfoRequestModelCopyWith(IngredientInfoRequestModel value, $Res Function(IngredientInfoRequestModel) _then) = _$IngredientInfoRequestModelCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$IngredientInfoRequestModelCopyWithImpl<$Res>
    implements $IngredientInfoRequestModelCopyWith<$Res> {
  _$IngredientInfoRequestModelCopyWithImpl(this._self, this._then);

  final IngredientInfoRequestModel _self;
  final $Res Function(IngredientInfoRequestModel) _then;

/// Create a copy of IngredientInfoRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientInfoRequestModel].
extension IngredientInfoRequestModelPatterns on IngredientInfoRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientInfoRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientInfoRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientInfoRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientInfoRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientInfoRequestModel() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoRequestModel():
return $default(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoRequestModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientInfoRequestModel implements IngredientInfoRequestModel {
  const _IngredientInfoRequestModel({required this.id});
  

@override final  String id;

/// Create a copy of IngredientInfoRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientInfoRequestModelCopyWith<_IngredientInfoRequestModel> get copyWith => __$IngredientInfoRequestModelCopyWithImpl<_IngredientInfoRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientInfoRequestModel&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IngredientInfoRequestModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$IngredientInfoRequestModelCopyWith<$Res> implements $IngredientInfoRequestModelCopyWith<$Res> {
  factory _$IngredientInfoRequestModelCopyWith(_IngredientInfoRequestModel value, $Res Function(_IngredientInfoRequestModel) _then) = __$IngredientInfoRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$IngredientInfoRequestModelCopyWithImpl<$Res>
    implements _$IngredientInfoRequestModelCopyWith<$Res> {
  __$IngredientInfoRequestModelCopyWithImpl(this._self, this._then);

  final _IngredientInfoRequestModel _self;
  final $Res Function(_IngredientInfoRequestModel) _then;

/// Create a copy of IngredientInfoRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_IngredientInfoRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
