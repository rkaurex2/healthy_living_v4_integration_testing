// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_mobile_user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileMobileUserRequestModel {

@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get country;@JsonKey(name: 'zip_code') String get zipCode;
/// Create a copy of EditProfileMobileUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileMobileUserRequestModelCopyWith<EditProfileMobileUserRequestModel> get copyWith => _$EditProfileMobileUserRequestModelCopyWithImpl<EditProfileMobileUserRequestModel>(this as EditProfileMobileUserRequestModel, _$identity);

  /// Serializes this EditProfileMobileUserRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileMobileUserRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,country,zipCode);

@override
String toString() {
  return 'EditProfileMobileUserRequestModel(firstName: $firstName, lastName: $lastName, country: $country, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class $EditProfileMobileUserRequestModelCopyWith<$Res>  {
  factory $EditProfileMobileUserRequestModelCopyWith(EditProfileMobileUserRequestModel value, $Res Function(EditProfileMobileUserRequestModel) _then) = _$EditProfileMobileUserRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String country,@JsonKey(name: 'zip_code') String zipCode
});




}
/// @nodoc
class _$EditProfileMobileUserRequestModelCopyWithImpl<$Res>
    implements $EditProfileMobileUserRequestModelCopyWith<$Res> {
  _$EditProfileMobileUserRequestModelCopyWithImpl(this._self, this._then);

  final EditProfileMobileUserRequestModel _self;
  final $Res Function(EditProfileMobileUserRequestModel) _then;

/// Create a copy of EditProfileMobileUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? country = null,Object? zipCode = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EditProfileMobileUserRequestModel].
extension EditProfileMobileUserRequestModelPatterns on EditProfileMobileUserRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileMobileUserRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileMobileUserRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileMobileUserRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String country, @JsonKey(name: 'zip_code')  String zipCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.country,_that.zipCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String country, @JsonKey(name: 'zip_code')  String zipCode)  $default,) {final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel():
return $default(_that.firstName,_that.lastName,_that.country,_that.zipCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String country, @JsonKey(name: 'zip_code')  String zipCode)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileMobileUserRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.country,_that.zipCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditProfileMobileUserRequestModel implements EditProfileMobileUserRequestModel {
  const _EditProfileMobileUserRequestModel({@JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.country, @JsonKey(name: 'zip_code') required this.zipCode});
  factory _EditProfileMobileUserRequestModel.fromJson(Map<String, dynamic> json) => _$EditProfileMobileUserRequestModelFromJson(json);

@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String country;
@override@JsonKey(name: 'zip_code') final  String zipCode;

/// Create a copy of EditProfileMobileUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileMobileUserRequestModelCopyWith<_EditProfileMobileUserRequestModel> get copyWith => __$EditProfileMobileUserRequestModelCopyWithImpl<_EditProfileMobileUserRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditProfileMobileUserRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileMobileUserRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,country,zipCode);

@override
String toString() {
  return 'EditProfileMobileUserRequestModel(firstName: $firstName, lastName: $lastName, country: $country, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class _$EditProfileMobileUserRequestModelCopyWith<$Res> implements $EditProfileMobileUserRequestModelCopyWith<$Res> {
  factory _$EditProfileMobileUserRequestModelCopyWith(_EditProfileMobileUserRequestModel value, $Res Function(_EditProfileMobileUserRequestModel) _then) = __$EditProfileMobileUserRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String country,@JsonKey(name: 'zip_code') String zipCode
});




}
/// @nodoc
class __$EditProfileMobileUserRequestModelCopyWithImpl<$Res>
    implements _$EditProfileMobileUserRequestModelCopyWith<$Res> {
  __$EditProfileMobileUserRequestModelCopyWithImpl(this._self, this._then);

  final _EditProfileMobileUserRequestModel _self;
  final $Res Function(_EditProfileMobileUserRequestModel) _then;

/// Create a copy of EditProfileMobileUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? country = null,Object? zipCode = null,}) {
  return _then(_EditProfileMobileUserRequestModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
