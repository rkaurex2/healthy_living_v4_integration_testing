// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ft_ux_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FtUxState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FtUxState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FtUxState()';
}


}

/// @nodoc
class $FtUxStateCopyWith<$Res>  {
$FtUxStateCopyWith(FtUxState _, $Res Function(FtUxState) __);
}


/// Adds pattern-matching-related methods to [FtUxState].
extension FtUxStatePatterns on FtUxState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FtUxComplete value)?  ftUxComplete,TResult Function( ContinueAsGuestSuccess value)?  continueAsGuestSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FtUxComplete() when ftUxComplete != null:
return ftUxComplete(_that);case ContinueAsGuestSuccess() when continueAsGuestSuccess != null:
return continueAsGuestSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FtUxComplete value)  ftUxComplete,required TResult Function( ContinueAsGuestSuccess value)  continueAsGuestSuccess,}){
final _that = this;
switch (_that) {
case FtUxComplete():
return ftUxComplete(_that);case ContinueAsGuestSuccess():
return continueAsGuestSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FtUxComplete value)?  ftUxComplete,TResult? Function( ContinueAsGuestSuccess value)?  continueAsGuestSuccess,}){
final _that = this;
switch (_that) {
case FtUxComplete() when ftUxComplete != null:
return ftUxComplete(_that);case ContinueAsGuestSuccess() when continueAsGuestSuccess != null:
return continueAsGuestSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isFtUxComplete)?  ftUxComplete,TResult Function()?  continueAsGuestSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FtUxComplete() when ftUxComplete != null:
return ftUxComplete(_that.isFtUxComplete);case ContinueAsGuestSuccess() when continueAsGuestSuccess != null:
return continueAsGuestSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isFtUxComplete)  ftUxComplete,required TResult Function()  continueAsGuestSuccess,}) {final _that = this;
switch (_that) {
case FtUxComplete():
return ftUxComplete(_that.isFtUxComplete);case ContinueAsGuestSuccess():
return continueAsGuestSuccess();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isFtUxComplete)?  ftUxComplete,TResult? Function()?  continueAsGuestSuccess,}) {final _that = this;
switch (_that) {
case FtUxComplete() when ftUxComplete != null:
return ftUxComplete(_that.isFtUxComplete);case ContinueAsGuestSuccess() when continueAsGuestSuccess != null:
return continueAsGuestSuccess();case _:
  return null;

}
}

}

/// @nodoc


class FtUxComplete implements FtUxState {
  const FtUxComplete({required this.isFtUxComplete});
  

 final  bool isFtUxComplete;

/// Create a copy of FtUxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FtUxCompleteCopyWith<FtUxComplete> get copyWith => _$FtUxCompleteCopyWithImpl<FtUxComplete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FtUxComplete&&(identical(other.isFtUxComplete, isFtUxComplete) || other.isFtUxComplete == isFtUxComplete));
}


@override
int get hashCode => Object.hash(runtimeType,isFtUxComplete);

@override
String toString() {
  return 'FtUxState.ftUxComplete(isFtUxComplete: $isFtUxComplete)';
}


}

/// @nodoc
abstract mixin class $FtUxCompleteCopyWith<$Res> implements $FtUxStateCopyWith<$Res> {
  factory $FtUxCompleteCopyWith(FtUxComplete value, $Res Function(FtUxComplete) _then) = _$FtUxCompleteCopyWithImpl;
@useResult
$Res call({
 bool isFtUxComplete
});




}
/// @nodoc
class _$FtUxCompleteCopyWithImpl<$Res>
    implements $FtUxCompleteCopyWith<$Res> {
  _$FtUxCompleteCopyWithImpl(this._self, this._then);

  final FtUxComplete _self;
  final $Res Function(FtUxComplete) _then;

/// Create a copy of FtUxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFtUxComplete = null,}) {
  return _then(FtUxComplete(
isFtUxComplete: null == isFtUxComplete ? _self.isFtUxComplete : isFtUxComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ContinueAsGuestSuccess implements FtUxState {
  const ContinueAsGuestSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContinueAsGuestSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FtUxState.continueAsGuestSuccess()';
}


}




// dart format on
