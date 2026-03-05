// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataModel {

 String get email; String get country;@JsonKey(name: 'zip_code') String get zipCode;@JsonKey(name: 'subscribe_newsletter') bool get subscribeNewsletter;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'intial_login') bool? get initialLogin;@JsonKey(name: 'revenuecat') AuthRevenueCatResponseModel? get revenueCat; List<EntitlementsResponseModel>? get entitlements;
/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataModelCopyWith<UserDataModel> get copyWith => _$UserDataModelCopyWithImpl<UserDataModel>(this as UserDataModel, _$identity);

  /// Serializes this UserDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataModel&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin)&&(identical(other.revenueCat, revenueCat) || other.revenueCat == revenueCat)&&const DeepCollectionEquality().equals(other.entitlements, entitlements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zipCode,subscribeNewsletter,firstName,lastName,initialLogin,revenueCat,const DeepCollectionEquality().hash(entitlements));

@override
String toString() {
  return 'UserDataModel(email: $email, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, firstName: $firstName, lastName: $lastName, initialLogin: $initialLogin, revenueCat: $revenueCat, entitlements: $entitlements)';
}


}

/// @nodoc
abstract mixin class $UserDataModelCopyWith<$Res>  {
  factory $UserDataModelCopyWith(UserDataModel value, $Res Function(UserDataModel) _then) = _$UserDataModelCopyWithImpl;
@useResult
$Res call({
 String email, String country,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'intial_login') bool? initialLogin,@JsonKey(name: 'revenuecat') AuthRevenueCatResponseModel? revenueCat, List<EntitlementsResponseModel>? entitlements
});


$AuthRevenueCatResponseModelCopyWith<$Res>? get revenueCat;

}
/// @nodoc
class _$UserDataModelCopyWithImpl<$Res>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._self, this._then);

  final UserDataModel _self;
  final $Res Function(UserDataModel) _then;

/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? country = null,Object? zipCode = null,Object? subscribeNewsletter = null,Object? firstName = freezed,Object? lastName = freezed,Object? initialLogin = freezed,Object? revenueCat = freezed,Object? entitlements = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,revenueCat: freezed == revenueCat ? _self.revenueCat : revenueCat // ignore: cast_nullable_to_non_nullable
as AuthRevenueCatResponseModel?,entitlements: freezed == entitlements ? _self.entitlements : entitlements // ignore: cast_nullable_to_non_nullable
as List<EntitlementsResponseModel>?,
  ));
}
/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRevenueCatResponseModelCopyWith<$Res>? get revenueCat {
    if (_self.revenueCat == null) {
    return null;
  }

  return $AuthRevenueCatResponseModelCopyWith<$Res>(_self.revenueCat!, (value) {
    return _then(_self.copyWith(revenueCat: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDataModel].
extension UserDataModelPatterns on UserDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseModel? revenueCat,  List<EntitlementsResponseModel>? entitlements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataModel() when $default != null:
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin,_that.revenueCat,_that.entitlements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseModel? revenueCat,  List<EntitlementsResponseModel>? entitlements)  $default,) {final _that = this;
switch (_that) {
case _UserDataModel():
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin,_that.revenueCat,_that.entitlements);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseModel? revenueCat,  List<EntitlementsResponseModel>? entitlements)?  $default,) {final _that = this;
switch (_that) {
case _UserDataModel() when $default != null:
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin,_that.revenueCat,_that.entitlements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDataModel implements UserDataModel {
  const _UserDataModel({required this.email, required this.country, @JsonKey(name: 'zip_code') required this.zipCode, @JsonKey(name: 'subscribe_newsletter') required this.subscribeNewsletter, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'intial_login') this.initialLogin, @JsonKey(name: 'revenuecat') this.revenueCat, final  List<EntitlementsResponseModel>? entitlements}): _entitlements = entitlements;
  factory _UserDataModel.fromJson(Map<String, dynamic> json) => _$UserDataModelFromJson(json);

@override final  String email;
@override final  String country;
@override@JsonKey(name: 'zip_code') final  String zipCode;
@override@JsonKey(name: 'subscribe_newsletter') final  bool subscribeNewsletter;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'intial_login') final  bool? initialLogin;
@override@JsonKey(name: 'revenuecat') final  AuthRevenueCatResponseModel? revenueCat;
 final  List<EntitlementsResponseModel>? _entitlements;
@override List<EntitlementsResponseModel>? get entitlements {
  final value = _entitlements;
  if (value == null) return null;
  if (_entitlements is EqualUnmodifiableListView) return _entitlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataModelCopyWith<_UserDataModel> get copyWith => __$UserDataModelCopyWithImpl<_UserDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataModel&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin)&&(identical(other.revenueCat, revenueCat) || other.revenueCat == revenueCat)&&const DeepCollectionEquality().equals(other._entitlements, _entitlements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zipCode,subscribeNewsletter,firstName,lastName,initialLogin,revenueCat,const DeepCollectionEquality().hash(_entitlements));

@override
String toString() {
  return 'UserDataModel(email: $email, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, firstName: $firstName, lastName: $lastName, initialLogin: $initialLogin, revenueCat: $revenueCat, entitlements: $entitlements)';
}


}

/// @nodoc
abstract mixin class _$UserDataModelCopyWith<$Res> implements $UserDataModelCopyWith<$Res> {
  factory _$UserDataModelCopyWith(_UserDataModel value, $Res Function(_UserDataModel) _then) = __$UserDataModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String country,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'intial_login') bool? initialLogin,@JsonKey(name: 'revenuecat') AuthRevenueCatResponseModel? revenueCat, List<EntitlementsResponseModel>? entitlements
});


@override $AuthRevenueCatResponseModelCopyWith<$Res>? get revenueCat;

}
/// @nodoc
class __$UserDataModelCopyWithImpl<$Res>
    implements _$UserDataModelCopyWith<$Res> {
  __$UserDataModelCopyWithImpl(this._self, this._then);

  final _UserDataModel _self;
  final $Res Function(_UserDataModel) _then;

/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? country = null,Object? zipCode = null,Object? subscribeNewsletter = null,Object? firstName = freezed,Object? lastName = freezed,Object? initialLogin = freezed,Object? revenueCat = freezed,Object? entitlements = freezed,}) {
  return _then(_UserDataModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,revenueCat: freezed == revenueCat ? _self.revenueCat : revenueCat // ignore: cast_nullable_to_non_nullable
as AuthRevenueCatResponseModel?,entitlements: freezed == entitlements ? _self._entitlements : entitlements // ignore: cast_nullable_to_non_nullable
as List<EntitlementsResponseModel>?,
  ));
}

/// Create a copy of UserDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRevenueCatResponseModelCopyWith<$Res>? get revenueCat {
    if (_self.revenueCat == null) {
    return null;
  }

  return $AuthRevenueCatResponseModelCopyWith<$Res>(_self.revenueCat!, (value) {
    return _then(_self.copyWith(revenueCat: value));
  });
}
}

// dart format on
