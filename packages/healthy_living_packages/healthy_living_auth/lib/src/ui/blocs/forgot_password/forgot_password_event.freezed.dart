// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent()';
}


}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res>  {
$ForgotPasswordEventCopyWith(ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordEvent].
extension ForgotPasswordEventPatterns on ForgotPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailChanged value)?  emailChanged,TResult Function( OnTextChange value)?  onTextChange,TResult Function( ResetLinkButton value)?  resetLinkButtonEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case ResetLinkButton() when resetLinkButtonEvent != null:
return resetLinkButtonEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailChanged value)  emailChanged,required TResult Function( OnTextChange value)  onTextChange,required TResult Function( ResetLinkButton value)  resetLinkButtonEvent,}){
final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that);case OnTextChange():
return onTextChange(_that);case ResetLinkButton():
return resetLinkButtonEvent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( OnTextChange value)?  onTextChange,TResult? Function( ResetLinkButton value)?  resetLinkButtonEvent,}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case ResetLinkButton() when resetLinkButtonEvent != null:
return resetLinkButtonEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  emailChanged,TResult Function( String email)?  onTextChange,TResult Function( String email)?  resetLinkButtonEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.value);case OnTextChange() when onTextChange != null:
return onTextChange(_that.email);case ResetLinkButton() when resetLinkButtonEvent != null:
return resetLinkButtonEvent(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  emailChanged,required TResult Function( String email)  onTextChange,required TResult Function( String email)  resetLinkButtonEvent,}) {final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that.value);case OnTextChange():
return onTextChange(_that.email);case ResetLinkButton():
return resetLinkButtonEvent(_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  emailChanged,TResult? Function( String email)?  onTextChange,TResult? Function( String email)?  resetLinkButtonEvent,}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.value);case OnTextChange() when onTextChange != null:
return onTextChange(_that.email);case ResetLinkButton() when resetLinkButtonEvent != null:
return resetLinkButtonEvent(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class EmailChanged implements ForgotPasswordEvent {
  const EmailChanged(this.value);
  

 final  String value;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ForgotPasswordEvent.emailChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(EmailChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnTextChange implements ForgotPasswordEvent {
  const OnTextChange({required this.email});
  

 final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTextChangeCopyWith<OnTextChange> get copyWith => _$OnTextChangeCopyWithImpl<OnTextChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTextChange&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPasswordEvent.onTextChange(email: $email)';
}


}

/// @nodoc
abstract mixin class $OnTextChangeCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $OnTextChangeCopyWith(OnTextChange value, $Res Function(OnTextChange) _then) = _$OnTextChangeCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$OnTextChangeCopyWithImpl<$Res>
    implements $OnTextChangeCopyWith<$Res> {
  _$OnTextChangeCopyWithImpl(this._self, this._then);

  final OnTextChange _self;
  final $Res Function(OnTextChange) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(OnTextChange(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetLinkButton implements ForgotPasswordEvent {
  const ResetLinkButton({required this.email});
  

 final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetLinkButtonCopyWith<ResetLinkButton> get copyWith => _$ResetLinkButtonCopyWithImpl<ResetLinkButton>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetLinkButton&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPasswordEvent.resetLinkButtonEvent(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetLinkButtonCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ResetLinkButtonCopyWith(ResetLinkButton value, $Res Function(ResetLinkButton) _then) = _$ResetLinkButtonCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetLinkButtonCopyWithImpl<$Res>
    implements $ResetLinkButtonCopyWith<$Res> {
  _$ResetLinkButtonCopyWithImpl(this._self, this._then);

  final ResetLinkButton _self;
  final $Res Function(ResetLinkButton) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetLinkButton(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
