// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_sign_in_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialSignInRequestModel {

 String get token; String get provider;
/// Create a copy of SocialSignInRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialSignInRequestModelCopyWith<SocialSignInRequestModel> get copyWith => _$SocialSignInRequestModelCopyWithImpl<SocialSignInRequestModel>(this as SocialSignInRequestModel, _$identity);

  /// Serializes this SocialSignInRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialSignInRequestModel&&(identical(other.token, token) || other.token == token)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,provider);

@override
String toString() {
  return 'SocialSignInRequestModel(token: $token, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SocialSignInRequestModelCopyWith<$Res>  {
  factory $SocialSignInRequestModelCopyWith(SocialSignInRequestModel value, $Res Function(SocialSignInRequestModel) _then) = _$SocialSignInRequestModelCopyWithImpl;
@useResult
$Res call({
 String token, String provider
});




}
/// @nodoc
class _$SocialSignInRequestModelCopyWithImpl<$Res>
    implements $SocialSignInRequestModelCopyWith<$Res> {
  _$SocialSignInRequestModelCopyWithImpl(this._self, this._then);

  final SocialSignInRequestModel _self;
  final $Res Function(SocialSignInRequestModel) _then;

/// Create a copy of SocialSignInRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? provider = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialSignInRequestModel].
extension SocialSignInRequestModelPatterns on SocialSignInRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialSignInRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialSignInRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialSignInRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SocialSignInRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialSignInRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SocialSignInRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialSignInRequestModel() when $default != null:
return $default(_that.token,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String provider)  $default,) {final _that = this;
switch (_that) {
case _SocialSignInRequestModel():
return $default(_that.token,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String provider)?  $default,) {final _that = this;
switch (_that) {
case _SocialSignInRequestModel() when $default != null:
return $default(_that.token,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialSignInRequestModel implements SocialSignInRequestModel {
  const _SocialSignInRequestModel({required this.token, required this.provider});
  factory _SocialSignInRequestModel.fromJson(Map<String, dynamic> json) => _$SocialSignInRequestModelFromJson(json);

@override final  String token;
@override final  String provider;

/// Create a copy of SocialSignInRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialSignInRequestModelCopyWith<_SocialSignInRequestModel> get copyWith => __$SocialSignInRequestModelCopyWithImpl<_SocialSignInRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialSignInRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialSignInRequestModel&&(identical(other.token, token) || other.token == token)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,provider);

@override
String toString() {
  return 'SocialSignInRequestModel(token: $token, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SocialSignInRequestModelCopyWith<$Res> implements $SocialSignInRequestModelCopyWith<$Res> {
  factory _$SocialSignInRequestModelCopyWith(_SocialSignInRequestModel value, $Res Function(_SocialSignInRequestModel) _then) = __$SocialSignInRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String token, String provider
});




}
/// @nodoc
class __$SocialSignInRequestModelCopyWithImpl<$Res>
    implements _$SocialSignInRequestModelCopyWith<$Res> {
  __$SocialSignInRequestModelCopyWithImpl(this._self, this._then);

  final _SocialSignInRequestModel _self;
  final $Res Function(_SocialSignInRequestModel) _then;

/// Create a copy of SocialSignInRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? provider = null,}) {
  return _then(_SocialSignInRequestModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
