// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entitlements_verify_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EntitlementsVerifyResponseModel {

 UserDataModel? get userData;
/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntitlementsVerifyResponseModelCopyWith<EntitlementsVerifyResponseModel> get copyWith => _$EntitlementsVerifyResponseModelCopyWithImpl<EntitlementsVerifyResponseModel>(this as EntitlementsVerifyResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerifyResponseModel&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,userData);

@override
String toString() {
  return 'EntitlementsVerifyResponseModel(userData: $userData)';
}


}

/// @nodoc
abstract mixin class $EntitlementsVerifyResponseModelCopyWith<$Res>  {
  factory $EntitlementsVerifyResponseModelCopyWith(EntitlementsVerifyResponseModel value, $Res Function(EntitlementsVerifyResponseModel) _then) = _$EntitlementsVerifyResponseModelCopyWithImpl;
@useResult
$Res call({
 UserDataModel? userData
});


$UserDataModelCopyWith<$Res>? get userData;

}
/// @nodoc
class _$EntitlementsVerifyResponseModelCopyWithImpl<$Res>
    implements $EntitlementsVerifyResponseModelCopyWith<$Res> {
  _$EntitlementsVerifyResponseModelCopyWithImpl(this._self, this._then);

  final EntitlementsVerifyResponseModel _self;
  final $Res Function(EntitlementsVerifyResponseModel) _then;

/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userData = freezed,}) {
  return _then(_self.copyWith(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataModel?,
  ));
}
/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataModelCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataModelCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}


/// Adds pattern-matching-related methods to [EntitlementsVerifyResponseModel].
extension EntitlementsVerifyResponseModelPatterns on EntitlementsVerifyResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntitlementsVerifyResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntitlementsVerifyResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntitlementsVerifyResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDataModel? userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel() when $default != null:
return $default(_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDataModel? userData)  $default,) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel():
return $default(_that.userData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDataModel? userData)?  $default,) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseModel() when $default != null:
return $default(_that.userData);case _:
  return null;

}
}

}

/// @nodoc


class _EntitlementsVerifyResponseModel implements EntitlementsVerifyResponseModel {
  const _EntitlementsVerifyResponseModel({this.userData});
  

@override final  UserDataModel? userData;

/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntitlementsVerifyResponseModelCopyWith<_EntitlementsVerifyResponseModel> get copyWith => __$EntitlementsVerifyResponseModelCopyWithImpl<_EntitlementsVerifyResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntitlementsVerifyResponseModel&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,userData);

@override
String toString() {
  return 'EntitlementsVerifyResponseModel(userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$EntitlementsVerifyResponseModelCopyWith<$Res> implements $EntitlementsVerifyResponseModelCopyWith<$Res> {
  factory _$EntitlementsVerifyResponseModelCopyWith(_EntitlementsVerifyResponseModel value, $Res Function(_EntitlementsVerifyResponseModel) _then) = __$EntitlementsVerifyResponseModelCopyWithImpl;
@override @useResult
$Res call({
 UserDataModel? userData
});


@override $UserDataModelCopyWith<$Res>? get userData;

}
/// @nodoc
class __$EntitlementsVerifyResponseModelCopyWithImpl<$Res>
    implements _$EntitlementsVerifyResponseModelCopyWith<$Res> {
  __$EntitlementsVerifyResponseModelCopyWithImpl(this._self, this._then);

  final _EntitlementsVerifyResponseModel _self;
  final $Res Function(_EntitlementsVerifyResponseModel) _then;

/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userData = freezed,}) {
  return _then(_EntitlementsVerifyResponseModel(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataModel?,
  ));
}

/// Create a copy of EntitlementsVerifyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataModelCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataModelCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}

// dart format on
