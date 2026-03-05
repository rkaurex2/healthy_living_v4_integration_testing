// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckEmailEvent {

 String get email;
/// Create a copy of CheckEmailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailEventCopyWith<CheckEmailEvent> get copyWith => _$CheckEmailEventCopyWithImpl<CheckEmailEvent>(this as CheckEmailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'CheckEmailEvent(email: $email)';
}


}

/// @nodoc
abstract mixin class $CheckEmailEventCopyWith<$Res>  {
  factory $CheckEmailEventCopyWith(CheckEmailEvent value, $Res Function(CheckEmailEvent) _then) = _$CheckEmailEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$CheckEmailEventCopyWithImpl<$Res>
    implements $CheckEmailEventCopyWith<$Res> {
  _$CheckEmailEventCopyWithImpl(this._self, this._then);

  final CheckEmailEvent _self;
  final $Res Function(CheckEmailEvent) _then;

/// Create a copy of CheckEmailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckEmailEvent].
extension CheckEmailEventPatterns on CheckEmailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResetLinkButtonTapped value)?  resetLinkButtonEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResetLinkButtonTapped() when resetLinkButtonEvent != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResetLinkButtonTapped value)  resetLinkButtonEvent,}){
final _that = this;
switch (_that) {
case ResetLinkButtonTapped():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResetLinkButtonTapped value)?  resetLinkButtonEvent,}){
final _that = this;
switch (_that) {
case ResetLinkButtonTapped() when resetLinkButtonEvent != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  resetLinkButtonEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResetLinkButtonTapped() when resetLinkButtonEvent != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  resetLinkButtonEvent,}) {final _that = this;
switch (_that) {
case ResetLinkButtonTapped():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  resetLinkButtonEvent,}) {final _that = this;
switch (_that) {
case ResetLinkButtonTapped() when resetLinkButtonEvent != null:
return resetLinkButtonEvent(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class ResetLinkButtonTapped implements CheckEmailEvent {
  const ResetLinkButtonTapped({required this.email});
  

@override final  String email;

/// Create a copy of CheckEmailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetLinkButtonTappedCopyWith<ResetLinkButtonTapped> get copyWith => _$ResetLinkButtonTappedCopyWithImpl<ResetLinkButtonTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetLinkButtonTapped&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'CheckEmailEvent.resetLinkButtonEvent(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetLinkButtonTappedCopyWith<$Res> implements $CheckEmailEventCopyWith<$Res> {
  factory $ResetLinkButtonTappedCopyWith(ResetLinkButtonTapped value, $Res Function(ResetLinkButtonTapped) _then) = _$ResetLinkButtonTappedCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetLinkButtonTappedCopyWithImpl<$Res>
    implements $ResetLinkButtonTappedCopyWith<$Res> {
  _$ResetLinkButtonTappedCopyWithImpl(this._self, this._then);

  final ResetLinkButtonTapped _self;
  final $Res Function(ResetLinkButtonTapped) _then;

/// Create a copy of CheckEmailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetLinkButtonTapped(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
