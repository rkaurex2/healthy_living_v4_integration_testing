// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 String get email; String get password; String get firstName; String get lastName; String get zipCode; String get country; AuthScreenStatus get status; Exception? get signUpException; bool get subscribeNewsletter; bool? get isFormButtonDisabled; DSTextInputState get emailTextInputState; DSTextInputState get passwordTextInputState; DSTextInputState get firstNameTextInputState; DSTextInputState get lastNameTextInputState; DSTextInputState get zipCodeTextInputState; UserDataModel? get userData; EmailErrorType get emailErrorType; PasswordErrorType get passwordErrorType;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.status, status) || other.status == status)&&(identical(other.signUpException, signUpException) || other.signUpException == signUpException)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.isFormButtonDisabled, isFormButtonDisabled) || other.isFormButtonDisabled == isFormButtonDisabled)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.passwordTextInputState, passwordTextInputState) || other.passwordTextInputState == passwordTextInputState)&&(identical(other.firstNameTextInputState, firstNameTextInputState) || other.firstNameTextInputState == firstNameTextInputState)&&(identical(other.lastNameTextInputState, lastNameTextInputState) || other.lastNameTextInputState == lastNameTextInputState)&&(identical(other.zipCodeTextInputState, zipCodeTextInputState) || other.zipCodeTextInputState == zipCodeTextInputState)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.emailErrorType, emailErrorType) || other.emailErrorType == emailErrorType)&&(identical(other.passwordErrorType, passwordErrorType) || other.passwordErrorType == passwordErrorType));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,zipCode,country,status,signUpException,subscribeNewsletter,isFormButtonDisabled,emailTextInputState,passwordTextInputState,firstNameTextInputState,lastNameTextInputState,zipCodeTextInputState,userData,emailErrorType,passwordErrorType);

@override
String toString() {
  return 'SignUpState(email: $email, password: $password, firstName: $firstName, lastName: $lastName, zipCode: $zipCode, country: $country, status: $status, signUpException: $signUpException, subscribeNewsletter: $subscribeNewsletter, isFormButtonDisabled: $isFormButtonDisabled, emailTextInputState: $emailTextInputState, passwordTextInputState: $passwordTextInputState, firstNameTextInputState: $firstNameTextInputState, lastNameTextInputState: $lastNameTextInputState, zipCodeTextInputState: $zipCodeTextInputState, userData: $userData, emailErrorType: $emailErrorType, passwordErrorType: $passwordErrorType)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String zipCode, String country, AuthScreenStatus status, Exception? signUpException, bool subscribeNewsletter, bool? isFormButtonDisabled, DSTextInputState emailTextInputState, DSTextInputState passwordTextInputState, DSTextInputState firstNameTextInputState, DSTextInputState lastNameTextInputState, DSTextInputState zipCodeTextInputState, UserDataModel? userData, EmailErrorType emailErrorType, PasswordErrorType passwordErrorType
});


$UserDataModelCopyWith<$Res>? get userData;

}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? zipCode = null,Object? country = null,Object? status = null,Object? signUpException = freezed,Object? subscribeNewsletter = null,Object? isFormButtonDisabled = freezed,Object? emailTextInputState = null,Object? passwordTextInputState = null,Object? firstNameTextInputState = null,Object? lastNameTextInputState = null,Object? zipCodeTextInputState = null,Object? userData = freezed,Object? emailErrorType = null,Object? passwordErrorType = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,signUpException: freezed == signUpException ? _self.signUpException : signUpException // ignore: cast_nullable_to_non_nullable
as Exception?,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,isFormButtonDisabled: freezed == isFormButtonDisabled ? _self.isFormButtonDisabled : isFormButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,passwordTextInputState: null == passwordTextInputState ? _self.passwordTextInputState : passwordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,firstNameTextInputState: null == firstNameTextInputState ? _self.firstNameTextInputState : firstNameTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,lastNameTextInputState: null == lastNameTextInputState ? _self.lastNameTextInputState : lastNameTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,zipCodeTextInputState: null == zipCodeTextInputState ? _self.zipCodeTextInputState : zipCodeTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataModel?,emailErrorType: null == emailErrorType ? _self.emailErrorType : emailErrorType // ignore: cast_nullable_to_non_nullable
as EmailErrorType,passwordErrorType: null == passwordErrorType ? _self.passwordErrorType : passwordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,
  ));
}
/// Create a copy of SignUpState
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


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String zipCode,  String country,  AuthScreenStatus status,  Exception? signUpException,  bool subscribeNewsletter,  bool? isFormButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState,  DSTextInputState firstNameTextInputState,  DSTextInputState lastNameTextInputState,  DSTextInputState zipCodeTextInputState,  UserDataModel? userData,  EmailErrorType emailErrorType,  PasswordErrorType passwordErrorType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.zipCode,_that.country,_that.status,_that.signUpException,_that.subscribeNewsletter,_that.isFormButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState,_that.firstNameTextInputState,_that.lastNameTextInputState,_that.zipCodeTextInputState,_that.userData,_that.emailErrorType,_that.passwordErrorType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String zipCode,  String country,  AuthScreenStatus status,  Exception? signUpException,  bool subscribeNewsletter,  bool? isFormButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState,  DSTextInputState firstNameTextInputState,  DSTextInputState lastNameTextInputState,  DSTextInputState zipCodeTextInputState,  UserDataModel? userData,  EmailErrorType emailErrorType,  PasswordErrorType passwordErrorType)  $default,) {final _that = this;
switch (_that) {
case _SignUpState():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.zipCode,_that.country,_that.status,_that.signUpException,_that.subscribeNewsletter,_that.isFormButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState,_that.firstNameTextInputState,_that.lastNameTextInputState,_that.zipCodeTextInputState,_that.userData,_that.emailErrorType,_that.passwordErrorType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String zipCode,  String country,  AuthScreenStatus status,  Exception? signUpException,  bool subscribeNewsletter,  bool? isFormButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState,  DSTextInputState firstNameTextInputState,  DSTextInputState lastNameTextInputState,  DSTextInputState zipCodeTextInputState,  UserDataModel? userData,  EmailErrorType emailErrorType,  PasswordErrorType passwordErrorType)?  $default,) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.zipCode,_that.country,_that.status,_that.signUpException,_that.subscribeNewsletter,_that.isFormButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState,_that.firstNameTextInputState,_that.lastNameTextInputState,_that.zipCodeTextInputState,_that.userData,_that.emailErrorType,_that.passwordErrorType);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpState implements SignUpState {
  const _SignUpState({required this.email, required this.password, required this.firstName, required this.lastName, required this.zipCode, required this.country, this.status = AuthScreenStatus.initial, this.signUpException, this.subscribeNewsletter = false, this.isFormButtonDisabled, this.emailTextInputState = DSTextInputState.defaultState, this.passwordTextInputState = DSTextInputState.defaultState, this.firstNameTextInputState = DSTextInputState.defaultState, this.lastNameTextInputState = DSTextInputState.defaultState, this.zipCodeTextInputState = DSTextInputState.defaultState, this.userData, this.emailErrorType = EmailErrorType.none, this.passwordErrorType = PasswordErrorType.none});
  

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String zipCode;
@override final  String country;
@override@JsonKey() final  AuthScreenStatus status;
@override final  Exception? signUpException;
@override@JsonKey() final  bool subscribeNewsletter;
@override final  bool? isFormButtonDisabled;
@override@JsonKey() final  DSTextInputState emailTextInputState;
@override@JsonKey() final  DSTextInputState passwordTextInputState;
@override@JsonKey() final  DSTextInputState firstNameTextInputState;
@override@JsonKey() final  DSTextInputState lastNameTextInputState;
@override@JsonKey() final  DSTextInputState zipCodeTextInputState;
@override final  UserDataModel? userData;
@override@JsonKey() final  EmailErrorType emailErrorType;
@override@JsonKey() final  PasswordErrorType passwordErrorType;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.status, status) || other.status == status)&&(identical(other.signUpException, signUpException) || other.signUpException == signUpException)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.isFormButtonDisabled, isFormButtonDisabled) || other.isFormButtonDisabled == isFormButtonDisabled)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.passwordTextInputState, passwordTextInputState) || other.passwordTextInputState == passwordTextInputState)&&(identical(other.firstNameTextInputState, firstNameTextInputState) || other.firstNameTextInputState == firstNameTextInputState)&&(identical(other.lastNameTextInputState, lastNameTextInputState) || other.lastNameTextInputState == lastNameTextInputState)&&(identical(other.zipCodeTextInputState, zipCodeTextInputState) || other.zipCodeTextInputState == zipCodeTextInputState)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.emailErrorType, emailErrorType) || other.emailErrorType == emailErrorType)&&(identical(other.passwordErrorType, passwordErrorType) || other.passwordErrorType == passwordErrorType));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,zipCode,country,status,signUpException,subscribeNewsletter,isFormButtonDisabled,emailTextInputState,passwordTextInputState,firstNameTextInputState,lastNameTextInputState,zipCodeTextInputState,userData,emailErrorType,passwordErrorType);

@override
String toString() {
  return 'SignUpState(email: $email, password: $password, firstName: $firstName, lastName: $lastName, zipCode: $zipCode, country: $country, status: $status, signUpException: $signUpException, subscribeNewsletter: $subscribeNewsletter, isFormButtonDisabled: $isFormButtonDisabled, emailTextInputState: $emailTextInputState, passwordTextInputState: $passwordTextInputState, firstNameTextInputState: $firstNameTextInputState, lastNameTextInputState: $lastNameTextInputState, zipCodeTextInputState: $zipCodeTextInputState, userData: $userData, emailErrorType: $emailErrorType, passwordErrorType: $passwordErrorType)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String zipCode, String country, AuthScreenStatus status, Exception? signUpException, bool subscribeNewsletter, bool? isFormButtonDisabled, DSTextInputState emailTextInputState, DSTextInputState passwordTextInputState, DSTextInputState firstNameTextInputState, DSTextInputState lastNameTextInputState, DSTextInputState zipCodeTextInputState, UserDataModel? userData, EmailErrorType emailErrorType, PasswordErrorType passwordErrorType
});


@override $UserDataModelCopyWith<$Res>? get userData;

}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? zipCode = null,Object? country = null,Object? status = null,Object? signUpException = freezed,Object? subscribeNewsletter = null,Object? isFormButtonDisabled = freezed,Object? emailTextInputState = null,Object? passwordTextInputState = null,Object? firstNameTextInputState = null,Object? lastNameTextInputState = null,Object? zipCodeTextInputState = null,Object? userData = freezed,Object? emailErrorType = null,Object? passwordErrorType = null,}) {
  return _then(_SignUpState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,signUpException: freezed == signUpException ? _self.signUpException : signUpException // ignore: cast_nullable_to_non_nullable
as Exception?,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,isFormButtonDisabled: freezed == isFormButtonDisabled ? _self.isFormButtonDisabled : isFormButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,passwordTextInputState: null == passwordTextInputState ? _self.passwordTextInputState : passwordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,firstNameTextInputState: null == firstNameTextInputState ? _self.firstNameTextInputState : firstNameTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,lastNameTextInputState: null == lastNameTextInputState ? _self.lastNameTextInputState : lastNameTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,zipCodeTextInputState: null == zipCodeTextInputState ? _self.zipCodeTextInputState : zipCodeTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataModel?,emailErrorType: null == emailErrorType ? _self.emailErrorType : emailErrorType // ignore: cast_nullable_to_non_nullable
as EmailErrorType,passwordErrorType: null == passwordErrorType ? _self.passwordErrorType : passwordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,
  ));
}

/// Create a copy of SignUpState
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
