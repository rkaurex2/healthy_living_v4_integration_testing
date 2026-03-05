// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileRequestModel {

@JsonKey(name: 'mobile_user') EditProfileMobileUserRequestModel get mobileUser;
/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileRequestModelCopyWith<EditProfileRequestModel> get copyWith => _$EditProfileRequestModelCopyWithImpl<EditProfileRequestModel>(this as EditProfileRequestModel, _$identity);

  /// Serializes this EditProfileRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileRequestModel&&(identical(other.mobileUser, mobileUser) || other.mobileUser == mobileUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileUser);

@override
String toString() {
  return 'EditProfileRequestModel(mobileUser: $mobileUser)';
}


}

/// @nodoc
abstract mixin class $EditProfileRequestModelCopyWith<$Res>  {
  factory $EditProfileRequestModelCopyWith(EditProfileRequestModel value, $Res Function(EditProfileRequestModel) _then) = _$EditProfileRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mobile_user') EditProfileMobileUserRequestModel mobileUser
});


$EditProfileMobileUserRequestModelCopyWith<$Res> get mobileUser;

}
/// @nodoc
class _$EditProfileRequestModelCopyWithImpl<$Res>
    implements $EditProfileRequestModelCopyWith<$Res> {
  _$EditProfileRequestModelCopyWithImpl(this._self, this._then);

  final EditProfileRequestModel _self;
  final $Res Function(EditProfileRequestModel) _then;

/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileUser = null,}) {
  return _then(_self.copyWith(
mobileUser: null == mobileUser ? _self.mobileUser : mobileUser // ignore: cast_nullable_to_non_nullable
as EditProfileMobileUserRequestModel,
  ));
}
/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileMobileUserRequestModelCopyWith<$Res> get mobileUser {
  
  return $EditProfileMobileUserRequestModelCopyWith<$Res>(_self.mobileUser, (value) {
    return _then(_self.copyWith(mobileUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditProfileRequestModel].
extension EditProfileRequestModelPatterns on EditProfileRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mobile_user')  EditProfileMobileUserRequestModel mobileUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileRequestModel() when $default != null:
return $default(_that.mobileUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mobile_user')  EditProfileMobileUserRequestModel mobileUser)  $default,) {final _that = this;
switch (_that) {
case _EditProfileRequestModel():
return $default(_that.mobileUser);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mobile_user')  EditProfileMobileUserRequestModel mobileUser)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileRequestModel() when $default != null:
return $default(_that.mobileUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditProfileRequestModel implements EditProfileRequestModel {
  const _EditProfileRequestModel({@JsonKey(name: 'mobile_user') required this.mobileUser});
  factory _EditProfileRequestModel.fromJson(Map<String, dynamic> json) => _$EditProfileRequestModelFromJson(json);

@override@JsonKey(name: 'mobile_user') final  EditProfileMobileUserRequestModel mobileUser;

/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileRequestModelCopyWith<_EditProfileRequestModel> get copyWith => __$EditProfileRequestModelCopyWithImpl<_EditProfileRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditProfileRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileRequestModel&&(identical(other.mobileUser, mobileUser) || other.mobileUser == mobileUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileUser);

@override
String toString() {
  return 'EditProfileRequestModel(mobileUser: $mobileUser)';
}


}

/// @nodoc
abstract mixin class _$EditProfileRequestModelCopyWith<$Res> implements $EditProfileRequestModelCopyWith<$Res> {
  factory _$EditProfileRequestModelCopyWith(_EditProfileRequestModel value, $Res Function(_EditProfileRequestModel) _then) = __$EditProfileRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mobile_user') EditProfileMobileUserRequestModel mobileUser
});


@override $EditProfileMobileUserRequestModelCopyWith<$Res> get mobileUser;

}
/// @nodoc
class __$EditProfileRequestModelCopyWithImpl<$Res>
    implements _$EditProfileRequestModelCopyWith<$Res> {
  __$EditProfileRequestModelCopyWithImpl(this._self, this._then);

  final _EditProfileRequestModel _self;
  final $Res Function(_EditProfileRequestModel) _then;

/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileUser = null,}) {
  return _then(_EditProfileRequestModel(
mobileUser: null == mobileUser ? _self.mobileUser : mobileUser // ignore: cast_nullable_to_non_nullable
as EditProfileMobileUserRequestModel,
  ));
}

/// Create a copy of EditProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileMobileUserRequestModelCopyWith<$Res> get mobileUser {
  
  return $EditProfileMobileUserRequestModelCopyWith<$Res>(_self.mobileUser, (value) {
    return _then(_self.copyWith(mobileUser: value));
  });
}
}

// dart format on
