// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_new_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateNewPasswordState {

 String get currentPassword; String get password; String get confirmPassword; bool get isFormButtonDisabled; AuthScreenStatus get status; Exception? get createPasswordException; DSTextInputState get newPasswordTextInputState; DSTextInputState get confirmPasswordInputState; DSTextInputState get currentPasswordInputState; PasswordErrorType get newPasswordErrorType; PasswordErrorType get currentPasswordErrorType; dynamic get confirmPasswordErrorType;
/// Create a copy of CreateNewPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewPasswordStateCopyWith<CreateNewPasswordState> get copyWith => _$CreateNewPasswordStateCopyWithImpl<CreateNewPasswordState>(this as CreateNewPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasswordState&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.isFormButtonDisabled, isFormButtonDisabled) || other.isFormButtonDisabled == isFormButtonDisabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.createPasswordException, createPasswordException) || other.createPasswordException == createPasswordException)&&(identical(other.newPasswordTextInputState, newPasswordTextInputState) || other.newPasswordTextInputState == newPasswordTextInputState)&&(identical(other.confirmPasswordInputState, confirmPasswordInputState) || other.confirmPasswordInputState == confirmPasswordInputState)&&(identical(other.currentPasswordInputState, currentPasswordInputState) || other.currentPasswordInputState == currentPasswordInputState)&&(identical(other.newPasswordErrorType, newPasswordErrorType) || other.newPasswordErrorType == newPasswordErrorType)&&(identical(other.currentPasswordErrorType, currentPasswordErrorType) || other.currentPasswordErrorType == currentPasswordErrorType)&&const DeepCollectionEquality().equals(other.confirmPasswordErrorType, confirmPasswordErrorType));
}


@override
int get hashCode => Object.hash(runtimeType,currentPassword,password,confirmPassword,isFormButtonDisabled,status,createPasswordException,newPasswordTextInputState,confirmPasswordInputState,currentPasswordInputState,newPasswordErrorType,currentPasswordErrorType,const DeepCollectionEquality().hash(confirmPasswordErrorType));

@override
String toString() {
  return 'CreateNewPasswordState(currentPassword: $currentPassword, password: $password, confirmPassword: $confirmPassword, isFormButtonDisabled: $isFormButtonDisabled, status: $status, createPasswordException: $createPasswordException, newPasswordTextInputState: $newPasswordTextInputState, confirmPasswordInputState: $confirmPasswordInputState, currentPasswordInputState: $currentPasswordInputState, newPasswordErrorType: $newPasswordErrorType, currentPasswordErrorType: $currentPasswordErrorType, confirmPasswordErrorType: $confirmPasswordErrorType)';
}


}

/// @nodoc
abstract mixin class $CreateNewPasswordStateCopyWith<$Res>  {
  factory $CreateNewPasswordStateCopyWith(CreateNewPasswordState value, $Res Function(CreateNewPasswordState) _then) = _$CreateNewPasswordStateCopyWithImpl;
@useResult
$Res call({
 String currentPassword, String password, String confirmPassword, bool isFormButtonDisabled, AuthScreenStatus status, Exception? createPasswordException, DSTextInputState newPasswordTextInputState, DSTextInputState confirmPasswordInputState, DSTextInputState currentPasswordInputState, PasswordErrorType newPasswordErrorType, PasswordErrorType currentPasswordErrorType, dynamic confirmPasswordErrorType
});




}
/// @nodoc
class _$CreateNewPasswordStateCopyWithImpl<$Res>
    implements $CreateNewPasswordStateCopyWith<$Res> {
  _$CreateNewPasswordStateCopyWithImpl(this._self, this._then);

  final CreateNewPasswordState _self;
  final $Res Function(CreateNewPasswordState) _then;

/// Create a copy of CreateNewPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPassword = null,Object? password = null,Object? confirmPassword = null,Object? isFormButtonDisabled = null,Object? status = null,Object? createPasswordException = freezed,Object? newPasswordTextInputState = null,Object? confirmPasswordInputState = null,Object? currentPasswordInputState = null,Object? newPasswordErrorType = null,Object? currentPasswordErrorType = null,Object? confirmPasswordErrorType = freezed,}) {
  return _then(_self.copyWith(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,isFormButtonDisabled: null == isFormButtonDisabled ? _self.isFormButtonDisabled : isFormButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,createPasswordException: freezed == createPasswordException ? _self.createPasswordException : createPasswordException // ignore: cast_nullable_to_non_nullable
as Exception?,newPasswordTextInputState: null == newPasswordTextInputState ? _self.newPasswordTextInputState : newPasswordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,confirmPasswordInputState: null == confirmPasswordInputState ? _self.confirmPasswordInputState : confirmPasswordInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,currentPasswordInputState: null == currentPasswordInputState ? _self.currentPasswordInputState : currentPasswordInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,newPasswordErrorType: null == newPasswordErrorType ? _self.newPasswordErrorType : newPasswordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,currentPasswordErrorType: null == currentPasswordErrorType ? _self.currentPasswordErrorType : currentPasswordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,confirmPasswordErrorType: freezed == confirmPasswordErrorType ? _self.confirmPasswordErrorType : confirmPasswordErrorType // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateNewPasswordState].
extension CreateNewPasswordStatePatterns on CreateNewPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateNewPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateNewPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateNewPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateNewPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currentPassword,  String password,  String confirmPassword,  bool isFormButtonDisabled,  AuthScreenStatus status,  Exception? createPasswordException,  DSTextInputState newPasswordTextInputState,  DSTextInputState confirmPasswordInputState,  DSTextInputState currentPasswordInputState,  PasswordErrorType newPasswordErrorType,  PasswordErrorType currentPasswordErrorType,  dynamic confirmPasswordErrorType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateNewPasswordState() when $default != null:
return $default(_that.currentPassword,_that.password,_that.confirmPassword,_that.isFormButtonDisabled,_that.status,_that.createPasswordException,_that.newPasswordTextInputState,_that.confirmPasswordInputState,_that.currentPasswordInputState,_that.newPasswordErrorType,_that.currentPasswordErrorType,_that.confirmPasswordErrorType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currentPassword,  String password,  String confirmPassword,  bool isFormButtonDisabled,  AuthScreenStatus status,  Exception? createPasswordException,  DSTextInputState newPasswordTextInputState,  DSTextInputState confirmPasswordInputState,  DSTextInputState currentPasswordInputState,  PasswordErrorType newPasswordErrorType,  PasswordErrorType currentPasswordErrorType,  dynamic confirmPasswordErrorType)  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasswordState():
return $default(_that.currentPassword,_that.password,_that.confirmPassword,_that.isFormButtonDisabled,_that.status,_that.createPasswordException,_that.newPasswordTextInputState,_that.confirmPasswordInputState,_that.currentPasswordInputState,_that.newPasswordErrorType,_that.currentPasswordErrorType,_that.confirmPasswordErrorType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currentPassword,  String password,  String confirmPassword,  bool isFormButtonDisabled,  AuthScreenStatus status,  Exception? createPasswordException,  DSTextInputState newPasswordTextInputState,  DSTextInputState confirmPasswordInputState,  DSTextInputState currentPasswordInputState,  PasswordErrorType newPasswordErrorType,  PasswordErrorType currentPasswordErrorType,  dynamic confirmPasswordErrorType)?  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasswordState() when $default != null:
return $default(_that.currentPassword,_that.password,_that.confirmPassword,_that.isFormButtonDisabled,_that.status,_that.createPasswordException,_that.newPasswordTextInputState,_that.confirmPasswordInputState,_that.currentPasswordInputState,_that.newPasswordErrorType,_that.currentPasswordErrorType,_that.confirmPasswordErrorType);case _:
  return null;

}
}

}

/// @nodoc


class _CreateNewPasswordState implements CreateNewPasswordState {
  const _CreateNewPasswordState({required this.currentPassword, required this.password, required this.confirmPassword, required this.isFormButtonDisabled, this.status = AuthScreenStatus.initial, this.createPasswordException, this.newPasswordTextInputState = DSTextInputState.defaultState, this.confirmPasswordInputState = DSTextInputState.defaultState, this.currentPasswordInputState = DSTextInputState.defaultState, this.newPasswordErrorType = PasswordErrorType.none, this.currentPasswordErrorType = PasswordErrorType.none, this.confirmPasswordErrorType = PasswordErrorType.none});
  

@override final  String currentPassword;
@override final  String password;
@override final  String confirmPassword;
@override final  bool isFormButtonDisabled;
@override@JsonKey() final  AuthScreenStatus status;
@override final  Exception? createPasswordException;
@override@JsonKey() final  DSTextInputState newPasswordTextInputState;
@override@JsonKey() final  DSTextInputState confirmPasswordInputState;
@override@JsonKey() final  DSTextInputState currentPasswordInputState;
@override@JsonKey() final  PasswordErrorType newPasswordErrorType;
@override@JsonKey() final  PasswordErrorType currentPasswordErrorType;
@override@JsonKey() final  dynamic confirmPasswordErrorType;

/// Create a copy of CreateNewPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNewPasswordStateCopyWith<_CreateNewPasswordState> get copyWith => __$CreateNewPasswordStateCopyWithImpl<_CreateNewPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNewPasswordState&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.isFormButtonDisabled, isFormButtonDisabled) || other.isFormButtonDisabled == isFormButtonDisabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.createPasswordException, createPasswordException) || other.createPasswordException == createPasswordException)&&(identical(other.newPasswordTextInputState, newPasswordTextInputState) || other.newPasswordTextInputState == newPasswordTextInputState)&&(identical(other.confirmPasswordInputState, confirmPasswordInputState) || other.confirmPasswordInputState == confirmPasswordInputState)&&(identical(other.currentPasswordInputState, currentPasswordInputState) || other.currentPasswordInputState == currentPasswordInputState)&&(identical(other.newPasswordErrorType, newPasswordErrorType) || other.newPasswordErrorType == newPasswordErrorType)&&(identical(other.currentPasswordErrorType, currentPasswordErrorType) || other.currentPasswordErrorType == currentPasswordErrorType)&&const DeepCollectionEquality().equals(other.confirmPasswordErrorType, confirmPasswordErrorType));
}


@override
int get hashCode => Object.hash(runtimeType,currentPassword,password,confirmPassword,isFormButtonDisabled,status,createPasswordException,newPasswordTextInputState,confirmPasswordInputState,currentPasswordInputState,newPasswordErrorType,currentPasswordErrorType,const DeepCollectionEquality().hash(confirmPasswordErrorType));

@override
String toString() {
  return 'CreateNewPasswordState(currentPassword: $currentPassword, password: $password, confirmPassword: $confirmPassword, isFormButtonDisabled: $isFormButtonDisabled, status: $status, createPasswordException: $createPasswordException, newPasswordTextInputState: $newPasswordTextInputState, confirmPasswordInputState: $confirmPasswordInputState, currentPasswordInputState: $currentPasswordInputState, newPasswordErrorType: $newPasswordErrorType, currentPasswordErrorType: $currentPasswordErrorType, confirmPasswordErrorType: $confirmPasswordErrorType)';
}


}

/// @nodoc
abstract mixin class _$CreateNewPasswordStateCopyWith<$Res> implements $CreateNewPasswordStateCopyWith<$Res> {
  factory _$CreateNewPasswordStateCopyWith(_CreateNewPasswordState value, $Res Function(_CreateNewPasswordState) _then) = __$CreateNewPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 String currentPassword, String password, String confirmPassword, bool isFormButtonDisabled, AuthScreenStatus status, Exception? createPasswordException, DSTextInputState newPasswordTextInputState, DSTextInputState confirmPasswordInputState, DSTextInputState currentPasswordInputState, PasswordErrorType newPasswordErrorType, PasswordErrorType currentPasswordErrorType, dynamic confirmPasswordErrorType
});




}
/// @nodoc
class __$CreateNewPasswordStateCopyWithImpl<$Res>
    implements _$CreateNewPasswordStateCopyWith<$Res> {
  __$CreateNewPasswordStateCopyWithImpl(this._self, this._then);

  final _CreateNewPasswordState _self;
  final $Res Function(_CreateNewPasswordState) _then;

/// Create a copy of CreateNewPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? password = null,Object? confirmPassword = null,Object? isFormButtonDisabled = null,Object? status = null,Object? createPasswordException = freezed,Object? newPasswordTextInputState = null,Object? confirmPasswordInputState = null,Object? currentPasswordInputState = null,Object? newPasswordErrorType = null,Object? currentPasswordErrorType = null,Object? confirmPasswordErrorType = freezed,}) {
  return _then(_CreateNewPasswordState(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,isFormButtonDisabled: null == isFormButtonDisabled ? _self.isFormButtonDisabled : isFormButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,createPasswordException: freezed == createPasswordException ? _self.createPasswordException : createPasswordException // ignore: cast_nullable_to_non_nullable
as Exception?,newPasswordTextInputState: null == newPasswordTextInputState ? _self.newPasswordTextInputState : newPasswordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,confirmPasswordInputState: null == confirmPasswordInputState ? _self.confirmPasswordInputState : confirmPasswordInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,currentPasswordInputState: null == currentPasswordInputState ? _self.currentPasswordInputState : currentPasswordInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,newPasswordErrorType: null == newPasswordErrorType ? _self.newPasswordErrorType : newPasswordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,currentPasswordErrorType: null == currentPasswordErrorType ? _self.currentPasswordErrorType : currentPasswordErrorType // ignore: cast_nullable_to_non_nullable
as PasswordErrorType,confirmPasswordErrorType: freezed == confirmPasswordErrorType ? _self.confirmPasswordErrorType : confirmPasswordErrorType // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
