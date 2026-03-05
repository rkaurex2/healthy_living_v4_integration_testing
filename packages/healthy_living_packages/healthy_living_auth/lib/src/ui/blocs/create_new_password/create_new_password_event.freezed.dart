// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_new_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateNewPasswordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasswordEvent()';
}


}

/// @nodoc
class $CreateNewPasswordEventCopyWith<$Res>  {
$CreateNewPasswordEventCopyWith(CreateNewPasswordEvent _, $Res Function(CreateNewPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [CreateNewPasswordEvent].
extension CreateNewPasswordEventPatterns on CreateNewPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateNewPasswordInitialized value)?  signupInitialized,TResult Function( CurrentPasswordFocusChanged value)?  currentPasswordFocusChanged,TResult Function( NewPasswordFocusChanged value)?  newPasswordFocusChanged,TResult Function( ConfirmPasswordFocusChanged value)?  confirmPasswordFocusChanged,TResult Function( SaveNewPasswordButtonTapped value)?  saveNewPasswordButton,TResult Function( OnTextChange value)?  onTextChange,TResult Function( ChangeNewPasswordButtonTapped value)?  changeNewPasswordButton,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateNewPasswordInitialized() when signupInitialized != null:
return signupInitialized(_that);case CurrentPasswordFocusChanged() when currentPasswordFocusChanged != null:
return currentPasswordFocusChanged(_that);case NewPasswordFocusChanged() when newPasswordFocusChanged != null:
return newPasswordFocusChanged(_that);case ConfirmPasswordFocusChanged() when confirmPasswordFocusChanged != null:
return confirmPasswordFocusChanged(_that);case SaveNewPasswordButtonTapped() when saveNewPasswordButton != null:
return saveNewPasswordButton(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case ChangeNewPasswordButtonTapped() when changeNewPasswordButton != null:
return changeNewPasswordButton(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateNewPasswordInitialized value)  signupInitialized,required TResult Function( CurrentPasswordFocusChanged value)  currentPasswordFocusChanged,required TResult Function( NewPasswordFocusChanged value)  newPasswordFocusChanged,required TResult Function( ConfirmPasswordFocusChanged value)  confirmPasswordFocusChanged,required TResult Function( SaveNewPasswordButtonTapped value)  saveNewPasswordButton,required TResult Function( OnTextChange value)  onTextChange,required TResult Function( ChangeNewPasswordButtonTapped value)  changeNewPasswordButton,}){
final _that = this;
switch (_that) {
case CreateNewPasswordInitialized():
return signupInitialized(_that);case CurrentPasswordFocusChanged():
return currentPasswordFocusChanged(_that);case NewPasswordFocusChanged():
return newPasswordFocusChanged(_that);case ConfirmPasswordFocusChanged():
return confirmPasswordFocusChanged(_that);case SaveNewPasswordButtonTapped():
return saveNewPasswordButton(_that);case OnTextChange():
return onTextChange(_that);case ChangeNewPasswordButtonTapped():
return changeNewPasswordButton(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateNewPasswordInitialized value)?  signupInitialized,TResult? Function( CurrentPasswordFocusChanged value)?  currentPasswordFocusChanged,TResult? Function( NewPasswordFocusChanged value)?  newPasswordFocusChanged,TResult? Function( ConfirmPasswordFocusChanged value)?  confirmPasswordFocusChanged,TResult? Function( SaveNewPasswordButtonTapped value)?  saveNewPasswordButton,TResult? Function( OnTextChange value)?  onTextChange,TResult? Function( ChangeNewPasswordButtonTapped value)?  changeNewPasswordButton,}){
final _that = this;
switch (_that) {
case CreateNewPasswordInitialized() when signupInitialized != null:
return signupInitialized(_that);case CurrentPasswordFocusChanged() when currentPasswordFocusChanged != null:
return currentPasswordFocusChanged(_that);case NewPasswordFocusChanged() when newPasswordFocusChanged != null:
return newPasswordFocusChanged(_that);case ConfirmPasswordFocusChanged() when confirmPasswordFocusChanged != null:
return confirmPasswordFocusChanged(_that);case SaveNewPasswordButtonTapped() when saveNewPasswordButton != null:
return saveNewPasswordButton(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case ChangeNewPasswordButtonTapped() when changeNewPasswordButton != null:
return changeNewPasswordButton(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  signupInitialized,TResult Function( String value)?  currentPasswordFocusChanged,TResult Function( String value)?  newPasswordFocusChanged,TResult Function( String value)?  confirmPasswordFocusChanged,TResult Function( String password,  String confirmPassword,  String code)?  saveNewPasswordButton,TResult Function( String currentPassword,  String newPassword,  String confirmPassword)?  onTextChange,TResult Function( String password,  String confirmPassword,  String currentPassword)?  changeNewPasswordButton,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateNewPasswordInitialized() when signupInitialized != null:
return signupInitialized();case CurrentPasswordFocusChanged() when currentPasswordFocusChanged != null:
return currentPasswordFocusChanged(_that.value);case NewPasswordFocusChanged() when newPasswordFocusChanged != null:
return newPasswordFocusChanged(_that.value);case ConfirmPasswordFocusChanged() when confirmPasswordFocusChanged != null:
return confirmPasswordFocusChanged(_that.value);case SaveNewPasswordButtonTapped() when saveNewPasswordButton != null:
return saveNewPasswordButton(_that.password,_that.confirmPassword,_that.code);case OnTextChange() when onTextChange != null:
return onTextChange(_that.currentPassword,_that.newPassword,_that.confirmPassword);case ChangeNewPasswordButtonTapped() when changeNewPasswordButton != null:
return changeNewPasswordButton(_that.password,_that.confirmPassword,_that.currentPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  signupInitialized,required TResult Function( String value)  currentPasswordFocusChanged,required TResult Function( String value)  newPasswordFocusChanged,required TResult Function( String value)  confirmPasswordFocusChanged,required TResult Function( String password,  String confirmPassword,  String code)  saveNewPasswordButton,required TResult Function( String currentPassword,  String newPassword,  String confirmPassword)  onTextChange,required TResult Function( String password,  String confirmPassword,  String currentPassword)  changeNewPasswordButton,}) {final _that = this;
switch (_that) {
case CreateNewPasswordInitialized():
return signupInitialized();case CurrentPasswordFocusChanged():
return currentPasswordFocusChanged(_that.value);case NewPasswordFocusChanged():
return newPasswordFocusChanged(_that.value);case ConfirmPasswordFocusChanged():
return confirmPasswordFocusChanged(_that.value);case SaveNewPasswordButtonTapped():
return saveNewPasswordButton(_that.password,_that.confirmPassword,_that.code);case OnTextChange():
return onTextChange(_that.currentPassword,_that.newPassword,_that.confirmPassword);case ChangeNewPasswordButtonTapped():
return changeNewPasswordButton(_that.password,_that.confirmPassword,_that.currentPassword);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  signupInitialized,TResult? Function( String value)?  currentPasswordFocusChanged,TResult? Function( String value)?  newPasswordFocusChanged,TResult? Function( String value)?  confirmPasswordFocusChanged,TResult? Function( String password,  String confirmPassword,  String code)?  saveNewPasswordButton,TResult? Function( String currentPassword,  String newPassword,  String confirmPassword)?  onTextChange,TResult? Function( String password,  String confirmPassword,  String currentPassword)?  changeNewPasswordButton,}) {final _that = this;
switch (_that) {
case CreateNewPasswordInitialized() when signupInitialized != null:
return signupInitialized();case CurrentPasswordFocusChanged() when currentPasswordFocusChanged != null:
return currentPasswordFocusChanged(_that.value);case NewPasswordFocusChanged() when newPasswordFocusChanged != null:
return newPasswordFocusChanged(_that.value);case ConfirmPasswordFocusChanged() when confirmPasswordFocusChanged != null:
return confirmPasswordFocusChanged(_that.value);case SaveNewPasswordButtonTapped() when saveNewPasswordButton != null:
return saveNewPasswordButton(_that.password,_that.confirmPassword,_that.code);case OnTextChange() when onTextChange != null:
return onTextChange(_that.currentPassword,_that.newPassword,_that.confirmPassword);case ChangeNewPasswordButtonTapped() when changeNewPasswordButton != null:
return changeNewPasswordButton(_that.password,_that.confirmPassword,_that.currentPassword);case _:
  return null;

}
}

}

/// @nodoc


class CreateNewPasswordInitialized implements CreateNewPasswordEvent {
  const CreateNewPasswordInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasswordInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasswordEvent.signupInitialized()';
}


}




/// @nodoc


class CurrentPasswordFocusChanged implements CreateNewPasswordEvent {
  const CurrentPasswordFocusChanged(this.value);
  

 final  String value;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentPasswordFocusChangedCopyWith<CurrentPasswordFocusChanged> get copyWith => _$CurrentPasswordFocusChangedCopyWithImpl<CurrentPasswordFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentPasswordFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateNewPasswordEvent.currentPasswordFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $CurrentPasswordFocusChangedCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $CurrentPasswordFocusChangedCopyWith(CurrentPasswordFocusChanged value, $Res Function(CurrentPasswordFocusChanged) _then) = _$CurrentPasswordFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$CurrentPasswordFocusChangedCopyWithImpl<$Res>
    implements $CurrentPasswordFocusChangedCopyWith<$Res> {
  _$CurrentPasswordFocusChangedCopyWithImpl(this._self, this._then);

  final CurrentPasswordFocusChanged _self;
  final $Res Function(CurrentPasswordFocusChanged) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(CurrentPasswordFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NewPasswordFocusChanged implements CreateNewPasswordEvent {
  const NewPasswordFocusChanged(this.value);
  

 final  String value;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewPasswordFocusChangedCopyWith<NewPasswordFocusChanged> get copyWith => _$NewPasswordFocusChangedCopyWithImpl<NewPasswordFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateNewPasswordEvent.newPasswordFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $NewPasswordFocusChangedCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $NewPasswordFocusChangedCopyWith(NewPasswordFocusChanged value, $Res Function(NewPasswordFocusChanged) _then) = _$NewPasswordFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$NewPasswordFocusChangedCopyWithImpl<$Res>
    implements $NewPasswordFocusChangedCopyWith<$Res> {
  _$NewPasswordFocusChangedCopyWithImpl(this._self, this._then);

  final NewPasswordFocusChanged _self;
  final $Res Function(NewPasswordFocusChanged) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(NewPasswordFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordFocusChanged implements CreateNewPasswordEvent {
  const ConfirmPasswordFocusChanged(this.value);
  

 final  String value;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordFocusChangedCopyWith<ConfirmPasswordFocusChanged> get copyWith => _$ConfirmPasswordFocusChangedCopyWithImpl<ConfirmPasswordFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateNewPasswordEvent.confirmPasswordFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordFocusChangedCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $ConfirmPasswordFocusChangedCopyWith(ConfirmPasswordFocusChanged value, $Res Function(ConfirmPasswordFocusChanged) _then) = _$ConfirmPasswordFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ConfirmPasswordFocusChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordFocusChangedCopyWith<$Res> {
  _$ConfirmPasswordFocusChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordFocusChanged _self;
  final $Res Function(ConfirmPasswordFocusChanged) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ConfirmPasswordFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SaveNewPasswordButtonTapped implements CreateNewPasswordEvent {
  const SaveNewPasswordButtonTapped({required this.password, required this.confirmPassword, required this.code});
  

 final  String password;
 final  String confirmPassword;
 final  String code;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveNewPasswordButtonTappedCopyWith<SaveNewPasswordButtonTapped> get copyWith => _$SaveNewPasswordButtonTappedCopyWithImpl<SaveNewPasswordButtonTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveNewPasswordButtonTapped&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,password,confirmPassword,code);

@override
String toString() {
  return 'CreateNewPasswordEvent.saveNewPasswordButton(password: $password, confirmPassword: $confirmPassword, code: $code)';
}


}

/// @nodoc
abstract mixin class $SaveNewPasswordButtonTappedCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $SaveNewPasswordButtonTappedCopyWith(SaveNewPasswordButtonTapped value, $Res Function(SaveNewPasswordButtonTapped) _then) = _$SaveNewPasswordButtonTappedCopyWithImpl;
@useResult
$Res call({
 String password, String confirmPassword, String code
});




}
/// @nodoc
class _$SaveNewPasswordButtonTappedCopyWithImpl<$Res>
    implements $SaveNewPasswordButtonTappedCopyWith<$Res> {
  _$SaveNewPasswordButtonTappedCopyWithImpl(this._self, this._then);

  final SaveNewPasswordButtonTapped _self;
  final $Res Function(SaveNewPasswordButtonTapped) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? confirmPassword = null,Object? code = null,}) {
  return _then(SaveNewPasswordButtonTapped(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnTextChange implements CreateNewPasswordEvent {
  const OnTextChange({required this.currentPassword, required this.newPassword, required this.confirmPassword});
  

 final  String currentPassword;
 final  String newPassword;
 final  String confirmPassword;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTextChangeCopyWith<OnTextChange> get copyWith => _$OnTextChangeCopyWithImpl<OnTextChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTextChange&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword,confirmPassword);

@override
String toString() {
  return 'CreateNewPasswordEvent.onTextChange(currentPassword: $currentPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $OnTextChangeCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $OnTextChangeCopyWith(OnTextChange value, $Res Function(OnTextChange) _then) = _$OnTextChangeCopyWithImpl;
@useResult
$Res call({
 String currentPassword, String newPassword, String confirmPassword
});




}
/// @nodoc
class _$OnTextChangeCopyWithImpl<$Res>
    implements $OnTextChangeCopyWith<$Res> {
  _$OnTextChangeCopyWithImpl(this._self, this._then);

  final OnTextChange _self;
  final $Res Function(OnTextChange) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? newPassword = null,Object? confirmPassword = null,}) {
  return _then(OnTextChange(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeNewPasswordButtonTapped implements CreateNewPasswordEvent {
  const ChangeNewPasswordButtonTapped({required this.password, required this.confirmPassword, required this.currentPassword});
  

 final  String password;
 final  String confirmPassword;
 final  String currentPassword;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeNewPasswordButtonTappedCopyWith<ChangeNewPasswordButtonTapped> get copyWith => _$ChangeNewPasswordButtonTappedCopyWithImpl<ChangeNewPasswordButtonTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeNewPasswordButtonTapped&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,confirmPassword,currentPassword);

@override
String toString() {
  return 'CreateNewPasswordEvent.changeNewPasswordButton(password: $password, confirmPassword: $confirmPassword, currentPassword: $currentPassword)';
}


}

/// @nodoc
abstract mixin class $ChangeNewPasswordButtonTappedCopyWith<$Res> implements $CreateNewPasswordEventCopyWith<$Res> {
  factory $ChangeNewPasswordButtonTappedCopyWith(ChangeNewPasswordButtonTapped value, $Res Function(ChangeNewPasswordButtonTapped) _then) = _$ChangeNewPasswordButtonTappedCopyWithImpl;
@useResult
$Res call({
 String password, String confirmPassword, String currentPassword
});




}
/// @nodoc
class _$ChangeNewPasswordButtonTappedCopyWithImpl<$Res>
    implements $ChangeNewPasswordButtonTappedCopyWith<$Res> {
  _$ChangeNewPasswordButtonTappedCopyWithImpl(this._self, this._then);

  final ChangeNewPasswordButtonTapped _self;
  final $Res Function(ChangeNewPasswordButtonTapped) _then;

/// Create a copy of CreateNewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? confirmPassword = null,Object? currentPassword = null,}) {
  return _then(ChangeNewPasswordButtonTapped(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
