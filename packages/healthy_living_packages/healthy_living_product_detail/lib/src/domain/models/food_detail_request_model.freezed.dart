// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodDetailRequestModel {

 String get upc;
/// Create a copy of FoodDetailRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailRequestModelCopyWith<FoodDetailRequestModel> get copyWith => _$FoodDetailRequestModelCopyWithImpl<FoodDetailRequestModel>(this as FoodDetailRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailRequestModel&&(identical(other.upc, upc) || other.upc == upc));
}


@override
int get hashCode => Object.hash(runtimeType,upc);

@override
String toString() {
  return 'FoodDetailRequestModel(upc: $upc)';
}


}

/// @nodoc
abstract mixin class $FoodDetailRequestModelCopyWith<$Res>  {
  factory $FoodDetailRequestModelCopyWith(FoodDetailRequestModel value, $Res Function(FoodDetailRequestModel) _then) = _$FoodDetailRequestModelCopyWithImpl;
@useResult
$Res call({
 String upc
});




}
/// @nodoc
class _$FoodDetailRequestModelCopyWithImpl<$Res>
    implements $FoodDetailRequestModelCopyWith<$Res> {
  _$FoodDetailRequestModelCopyWithImpl(this._self, this._then);

  final FoodDetailRequestModel _self;
  final $Res Function(FoodDetailRequestModel) _then;

/// Create a copy of FoodDetailRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? upc = null,}) {
  return _then(_self.copyWith(
upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailRequestModel].
extension FoodDetailRequestModelPatterns on FoodDetailRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String upc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailRequestModel() when $default != null:
return $default(_that.upc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String upc)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailRequestModel():
return $default(_that.upc);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String upc)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailRequestModel() when $default != null:
return $default(_that.upc);case _:
  return null;

}
}

}

/// @nodoc


class _FoodDetailRequestModel implements FoodDetailRequestModel {
  const _FoodDetailRequestModel({required this.upc});
  

@override final  String upc;

/// Create a copy of FoodDetailRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailRequestModelCopyWith<_FoodDetailRequestModel> get copyWith => __$FoodDetailRequestModelCopyWithImpl<_FoodDetailRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailRequestModel&&(identical(other.upc, upc) || other.upc == upc));
}


@override
int get hashCode => Object.hash(runtimeType,upc);

@override
String toString() {
  return 'FoodDetailRequestModel(upc: $upc)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailRequestModelCopyWith<$Res> implements $FoodDetailRequestModelCopyWith<$Res> {
  factory _$FoodDetailRequestModelCopyWith(_FoodDetailRequestModel value, $Res Function(_FoodDetailRequestModel) _then) = __$FoodDetailRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String upc
});




}
/// @nodoc
class __$FoodDetailRequestModelCopyWithImpl<$Res>
    implements _$FoodDetailRequestModelCopyWith<$Res> {
  __$FoodDetailRequestModelCopyWithImpl(this._self, this._then);

  final _FoodDetailRequestModel _self;
  final $Res Function(_FoodDetailRequestModel) _then;

/// Create a copy of FoodDetailRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? upc = null,}) {
  return _then(_FoodDetailRequestModel(
upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
