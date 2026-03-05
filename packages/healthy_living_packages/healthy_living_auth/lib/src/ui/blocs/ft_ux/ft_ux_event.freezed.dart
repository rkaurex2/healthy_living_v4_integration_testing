// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ft_ux_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FtUxEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FtUxEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FtUxEvent()';
}


}

/// @nodoc
class $FtUxEventCopyWith<$Res>  {
$FtUxEventCopyWith(FtUxEvent _, $Res Function(FtUxEvent) __);
}


/// Adds pattern-matching-related methods to [FtUxEvent].
extension FtUxEventPatterns on FtUxEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetFtUxCompleted value)?  setFtUxCompleted,TResult Function( ContinueAsGuestTapped value)?  continueAsGuestTapped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetFtUxCompleted() when setFtUxCompleted != null:
return setFtUxCompleted(_that);case ContinueAsGuestTapped() when continueAsGuestTapped != null:
return continueAsGuestTapped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetFtUxCompleted value)  setFtUxCompleted,required TResult Function( ContinueAsGuestTapped value)  continueAsGuestTapped,}){
final _that = this;
switch (_that) {
case SetFtUxCompleted():
return setFtUxCompleted(_that);case ContinueAsGuestTapped():
return continueAsGuestTapped(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetFtUxCompleted value)?  setFtUxCompleted,TResult? Function( ContinueAsGuestTapped value)?  continueAsGuestTapped,}){
final _that = this;
switch (_that) {
case SetFtUxCompleted() when setFtUxCompleted != null:
return setFtUxCompleted(_that);case ContinueAsGuestTapped() when continueAsGuestTapped != null:
return continueAsGuestTapped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool value)?  setFtUxCompleted,TResult Function()?  continueAsGuestTapped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetFtUxCompleted() when setFtUxCompleted != null:
return setFtUxCompleted(_that.value);case ContinueAsGuestTapped() when continueAsGuestTapped != null:
return continueAsGuestTapped();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool value)  setFtUxCompleted,required TResult Function()  continueAsGuestTapped,}) {final _that = this;
switch (_that) {
case SetFtUxCompleted():
return setFtUxCompleted(_that.value);case ContinueAsGuestTapped():
return continueAsGuestTapped();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool value)?  setFtUxCompleted,TResult? Function()?  continueAsGuestTapped,}) {final _that = this;
switch (_that) {
case SetFtUxCompleted() when setFtUxCompleted != null:
return setFtUxCompleted(_that.value);case ContinueAsGuestTapped() when continueAsGuestTapped != null:
return continueAsGuestTapped();case _:
  return null;

}
}

}

/// @nodoc


class SetFtUxCompleted implements FtUxEvent {
  const SetFtUxCompleted(this.value);
  

 final  bool value;

/// Create a copy of FtUxEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetFtUxCompletedCopyWith<SetFtUxCompleted> get copyWith => _$SetFtUxCompletedCopyWithImpl<SetFtUxCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetFtUxCompleted&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FtUxEvent.setFtUxCompleted(value: $value)';
}


}

/// @nodoc
abstract mixin class $SetFtUxCompletedCopyWith<$Res> implements $FtUxEventCopyWith<$Res> {
  factory $SetFtUxCompletedCopyWith(SetFtUxCompleted value, $Res Function(SetFtUxCompleted) _then) = _$SetFtUxCompletedCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$SetFtUxCompletedCopyWithImpl<$Res>
    implements $SetFtUxCompletedCopyWith<$Res> {
  _$SetFtUxCompletedCopyWithImpl(this._self, this._then);

  final SetFtUxCompleted _self;
  final $Res Function(SetFtUxCompleted) _then;

/// Create a copy of FtUxEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(SetFtUxCompleted(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ContinueAsGuestTapped implements FtUxEvent {
  const ContinueAsGuestTapped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContinueAsGuestTapped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FtUxEvent.continueAsGuestTapped()';
}


}




// dart format on
