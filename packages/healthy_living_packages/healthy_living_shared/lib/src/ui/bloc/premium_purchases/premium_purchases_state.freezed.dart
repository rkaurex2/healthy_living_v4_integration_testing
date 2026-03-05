// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_purchases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PremiumPurchasesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumPurchasesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesState()';
}


}

/// @nodoc
class $PremiumPurchasesStateCopyWith<$Res>  {
$PremiumPurchasesStateCopyWith(PremiumPurchasesState _, $Res Function(PremiumPurchasesState) __);
}


/// Adds pattern-matching-related methods to [PremiumPurchasesState].
extension PremiumPurchasesStatePatterns on PremiumPurchasesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PremiumPurchasesInitial value)?  initial,TResult Function( PaywallLoadInProgress value)?  paywallLoadInProgress,TResult Function( PaywallLoadSuccess value)?  paywallLoadSuccess,TResult Function( PaywallLoadFailure value)?  paywallLoadFailure,TResult Function( EntitlementsVerificationInProgress value)?  entitlementsVerificationInProgress,TResult Function( EntitlementsVerificationSuccess value)?  entitlementsVerificationSuccess,TResult Function( EntitlementsVerificationFailure value)?  entitlementsVerificationFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PremiumPurchasesInitial() when initial != null:
return initial(_that);case PaywallLoadInProgress() when paywallLoadInProgress != null:
return paywallLoadInProgress(_that);case PaywallLoadSuccess() when paywallLoadSuccess != null:
return paywallLoadSuccess(_that);case PaywallLoadFailure() when paywallLoadFailure != null:
return paywallLoadFailure(_that);case EntitlementsVerificationInProgress() when entitlementsVerificationInProgress != null:
return entitlementsVerificationInProgress(_that);case EntitlementsVerificationSuccess() when entitlementsVerificationSuccess != null:
return entitlementsVerificationSuccess(_that);case EntitlementsVerificationFailure() when entitlementsVerificationFailure != null:
return entitlementsVerificationFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PremiumPurchasesInitial value)  initial,required TResult Function( PaywallLoadInProgress value)  paywallLoadInProgress,required TResult Function( PaywallLoadSuccess value)  paywallLoadSuccess,required TResult Function( PaywallLoadFailure value)  paywallLoadFailure,required TResult Function( EntitlementsVerificationInProgress value)  entitlementsVerificationInProgress,required TResult Function( EntitlementsVerificationSuccess value)  entitlementsVerificationSuccess,required TResult Function( EntitlementsVerificationFailure value)  entitlementsVerificationFailure,}){
final _that = this;
switch (_that) {
case PremiumPurchasesInitial():
return initial(_that);case PaywallLoadInProgress():
return paywallLoadInProgress(_that);case PaywallLoadSuccess():
return paywallLoadSuccess(_that);case PaywallLoadFailure():
return paywallLoadFailure(_that);case EntitlementsVerificationInProgress():
return entitlementsVerificationInProgress(_that);case EntitlementsVerificationSuccess():
return entitlementsVerificationSuccess(_that);case EntitlementsVerificationFailure():
return entitlementsVerificationFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PremiumPurchasesInitial value)?  initial,TResult? Function( PaywallLoadInProgress value)?  paywallLoadInProgress,TResult? Function( PaywallLoadSuccess value)?  paywallLoadSuccess,TResult? Function( PaywallLoadFailure value)?  paywallLoadFailure,TResult? Function( EntitlementsVerificationInProgress value)?  entitlementsVerificationInProgress,TResult? Function( EntitlementsVerificationSuccess value)?  entitlementsVerificationSuccess,TResult? Function( EntitlementsVerificationFailure value)?  entitlementsVerificationFailure,}){
final _that = this;
switch (_that) {
case PremiumPurchasesInitial() when initial != null:
return initial(_that);case PaywallLoadInProgress() when paywallLoadInProgress != null:
return paywallLoadInProgress(_that);case PaywallLoadSuccess() when paywallLoadSuccess != null:
return paywallLoadSuccess(_that);case PaywallLoadFailure() when paywallLoadFailure != null:
return paywallLoadFailure(_that);case EntitlementsVerificationInProgress() when entitlementsVerificationInProgress != null:
return entitlementsVerificationInProgress(_that);case EntitlementsVerificationSuccess() when entitlementsVerificationSuccess != null:
return entitlementsVerificationSuccess(_that);case EntitlementsVerificationFailure() when entitlementsVerificationFailure != null:
return entitlementsVerificationFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  paywallLoadInProgress,TResult Function( AppPaywallResult paywallResult,  PaywallSource paywallSource)?  paywallLoadSuccess,TResult Function( Exception exception)?  paywallLoadFailure,TResult Function()?  entitlementsVerificationInProgress,TResult Function()?  entitlementsVerificationSuccess,TResult Function( Exception exception)?  entitlementsVerificationFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PremiumPurchasesInitial() when initial != null:
return initial();case PaywallLoadInProgress() when paywallLoadInProgress != null:
return paywallLoadInProgress();case PaywallLoadSuccess() when paywallLoadSuccess != null:
return paywallLoadSuccess(_that.paywallResult,_that.paywallSource);case PaywallLoadFailure() when paywallLoadFailure != null:
return paywallLoadFailure(_that.exception);case EntitlementsVerificationInProgress() when entitlementsVerificationInProgress != null:
return entitlementsVerificationInProgress();case EntitlementsVerificationSuccess() when entitlementsVerificationSuccess != null:
return entitlementsVerificationSuccess();case EntitlementsVerificationFailure() when entitlementsVerificationFailure != null:
return entitlementsVerificationFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  paywallLoadInProgress,required TResult Function( AppPaywallResult paywallResult,  PaywallSource paywallSource)  paywallLoadSuccess,required TResult Function( Exception exception)  paywallLoadFailure,required TResult Function()  entitlementsVerificationInProgress,required TResult Function()  entitlementsVerificationSuccess,required TResult Function( Exception exception)  entitlementsVerificationFailure,}) {final _that = this;
switch (_that) {
case PremiumPurchasesInitial():
return initial();case PaywallLoadInProgress():
return paywallLoadInProgress();case PaywallLoadSuccess():
return paywallLoadSuccess(_that.paywallResult,_that.paywallSource);case PaywallLoadFailure():
return paywallLoadFailure(_that.exception);case EntitlementsVerificationInProgress():
return entitlementsVerificationInProgress();case EntitlementsVerificationSuccess():
return entitlementsVerificationSuccess();case EntitlementsVerificationFailure():
return entitlementsVerificationFailure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  paywallLoadInProgress,TResult? Function( AppPaywallResult paywallResult,  PaywallSource paywallSource)?  paywallLoadSuccess,TResult? Function( Exception exception)?  paywallLoadFailure,TResult? Function()?  entitlementsVerificationInProgress,TResult? Function()?  entitlementsVerificationSuccess,TResult? Function( Exception exception)?  entitlementsVerificationFailure,}) {final _that = this;
switch (_that) {
case PremiumPurchasesInitial() when initial != null:
return initial();case PaywallLoadInProgress() when paywallLoadInProgress != null:
return paywallLoadInProgress();case PaywallLoadSuccess() when paywallLoadSuccess != null:
return paywallLoadSuccess(_that.paywallResult,_that.paywallSource);case PaywallLoadFailure() when paywallLoadFailure != null:
return paywallLoadFailure(_that.exception);case EntitlementsVerificationInProgress() when entitlementsVerificationInProgress != null:
return entitlementsVerificationInProgress();case EntitlementsVerificationSuccess() when entitlementsVerificationSuccess != null:
return entitlementsVerificationSuccess();case EntitlementsVerificationFailure() when entitlementsVerificationFailure != null:
return entitlementsVerificationFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class PremiumPurchasesInitial implements PremiumPurchasesState {
  const PremiumPurchasesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumPurchasesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesState.initial()';
}


}




/// @nodoc


class PaywallLoadInProgress implements PremiumPurchasesState {
  const PaywallLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaywallLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesState.paywallLoadInProgress()';
}


}




/// @nodoc


class PaywallLoadSuccess implements PremiumPurchasesState {
  const PaywallLoadSuccess({required this.paywallResult, required this.paywallSource});
  

 final  AppPaywallResult paywallResult;
 final  PaywallSource paywallSource;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaywallLoadSuccessCopyWith<PaywallLoadSuccess> get copyWith => _$PaywallLoadSuccessCopyWithImpl<PaywallLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaywallLoadSuccess&&(identical(other.paywallResult, paywallResult) || other.paywallResult == paywallResult)&&(identical(other.paywallSource, paywallSource) || other.paywallSource == paywallSource));
}


@override
int get hashCode => Object.hash(runtimeType,paywallResult,paywallSource);

@override
String toString() {
  return 'PremiumPurchasesState.paywallLoadSuccess(paywallResult: $paywallResult, paywallSource: $paywallSource)';
}


}

/// @nodoc
abstract mixin class $PaywallLoadSuccessCopyWith<$Res> implements $PremiumPurchasesStateCopyWith<$Res> {
  factory $PaywallLoadSuccessCopyWith(PaywallLoadSuccess value, $Res Function(PaywallLoadSuccess) _then) = _$PaywallLoadSuccessCopyWithImpl;
@useResult
$Res call({
 AppPaywallResult paywallResult, PaywallSource paywallSource
});




}
/// @nodoc
class _$PaywallLoadSuccessCopyWithImpl<$Res>
    implements $PaywallLoadSuccessCopyWith<$Res> {
  _$PaywallLoadSuccessCopyWithImpl(this._self, this._then);

  final PaywallLoadSuccess _self;
  final $Res Function(PaywallLoadSuccess) _then;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paywallResult = null,Object? paywallSource = null,}) {
  return _then(PaywallLoadSuccess(
paywallResult: null == paywallResult ? _self.paywallResult : paywallResult // ignore: cast_nullable_to_non_nullable
as AppPaywallResult,paywallSource: null == paywallSource ? _self.paywallSource : paywallSource // ignore: cast_nullable_to_non_nullable
as PaywallSource,
  ));
}


}

/// @nodoc


class PaywallLoadFailure implements PremiumPurchasesState {
  const PaywallLoadFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaywallLoadFailureCopyWith<PaywallLoadFailure> get copyWith => _$PaywallLoadFailureCopyWithImpl<PaywallLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaywallLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'PremiumPurchasesState.paywallLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $PaywallLoadFailureCopyWith<$Res> implements $PremiumPurchasesStateCopyWith<$Res> {
  factory $PaywallLoadFailureCopyWith(PaywallLoadFailure value, $Res Function(PaywallLoadFailure) _then) = _$PaywallLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$PaywallLoadFailureCopyWithImpl<$Res>
    implements $PaywallLoadFailureCopyWith<$Res> {
  _$PaywallLoadFailureCopyWithImpl(this._self, this._then);

  final PaywallLoadFailure _self;
  final $Res Function(PaywallLoadFailure) _then;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(PaywallLoadFailure(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class EntitlementsVerificationInProgress implements PremiumPurchasesState {
  const EntitlementsVerificationInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerificationInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesState.entitlementsVerificationInProgress()';
}


}




/// @nodoc


class EntitlementsVerificationSuccess implements PremiumPurchasesState {
  const EntitlementsVerificationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerificationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesState.entitlementsVerificationSuccess()';
}


}




/// @nodoc


class EntitlementsVerificationFailure implements PremiumPurchasesState {
  const EntitlementsVerificationFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntitlementsVerificationFailureCopyWith<EntitlementsVerificationFailure> get copyWith => _$EntitlementsVerificationFailureCopyWithImpl<EntitlementsVerificationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerificationFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'PremiumPurchasesState.entitlementsVerificationFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $EntitlementsVerificationFailureCopyWith<$Res> implements $PremiumPurchasesStateCopyWith<$Res> {
  factory $EntitlementsVerificationFailureCopyWith(EntitlementsVerificationFailure value, $Res Function(EntitlementsVerificationFailure) _then) = _$EntitlementsVerificationFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$EntitlementsVerificationFailureCopyWithImpl<$Res>
    implements $EntitlementsVerificationFailureCopyWith<$Res> {
  _$EntitlementsVerificationFailureCopyWithImpl(this._self, this._then);

  final EntitlementsVerificationFailure _self;
  final $Res Function(EntitlementsVerificationFailure) _then;

/// Create a copy of PremiumPurchasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(EntitlementsVerificationFailure(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
