// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionDetailsState()';
}


}

/// @nodoc
class $SubscriptionDetailsStateCopyWith<$Res>  {
$SubscriptionDetailsStateCopyWith(SubscriptionDetailsState _, $Res Function(SubscriptionDetailsState) __);
}


/// Adds pattern-matching-related methods to [SubscriptionDetailsState].
extension SubscriptionDetailsStatePatterns on SubscriptionDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubscriptionDetailsInitial value)?  initial,TResult Function( SubscriptionDetailsLoadInProgress value)?  loadInProgress,TResult Function( SubscriptionDetailsLoadSuccess value)?  loadSuccess,TResult Function( SubscriptionDetailsLoadFailure value)?  loadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubscriptionDetailsInitial() when initial != null:
return initial(_that);case SubscriptionDetailsLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case SubscriptionDetailsLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case SubscriptionDetailsLoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubscriptionDetailsInitial value)  initial,required TResult Function( SubscriptionDetailsLoadInProgress value)  loadInProgress,required TResult Function( SubscriptionDetailsLoadSuccess value)  loadSuccess,required TResult Function( SubscriptionDetailsLoadFailure value)  loadFailure,}){
final _that = this;
switch (_that) {
case SubscriptionDetailsInitial():
return initial(_that);case SubscriptionDetailsLoadInProgress():
return loadInProgress(_that);case SubscriptionDetailsLoadSuccess():
return loadSuccess(_that);case SubscriptionDetailsLoadFailure():
return loadFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubscriptionDetailsInitial value)?  initial,TResult? Function( SubscriptionDetailsLoadInProgress value)?  loadInProgress,TResult? Function( SubscriptionDetailsLoadSuccess value)?  loadSuccess,TResult? Function( SubscriptionDetailsLoadFailure value)?  loadFailure,}){
final _that = this;
switch (_that) {
case SubscriptionDetailsInitial() when initial != null:
return initial(_that);case SubscriptionDetailsLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case SubscriptionDetailsLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case SubscriptionDetailsLoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadInProgress,TResult Function( EntitlementInfo? activeEntitlementInfo,  Package? storeProduct)?  loadSuccess,TResult Function( Exception exception)?  loadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubscriptionDetailsInitial() when initial != null:
return initial();case SubscriptionDetailsLoadInProgress() when loadInProgress != null:
return loadInProgress();case SubscriptionDetailsLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.activeEntitlementInfo,_that.storeProduct);case SubscriptionDetailsLoadFailure() when loadFailure != null:
return loadFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadInProgress,required TResult Function( EntitlementInfo? activeEntitlementInfo,  Package? storeProduct)  loadSuccess,required TResult Function( Exception exception)  loadFailure,}) {final _that = this;
switch (_that) {
case SubscriptionDetailsInitial():
return initial();case SubscriptionDetailsLoadInProgress():
return loadInProgress();case SubscriptionDetailsLoadSuccess():
return loadSuccess(_that.activeEntitlementInfo,_that.storeProduct);case SubscriptionDetailsLoadFailure():
return loadFailure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadInProgress,TResult? Function( EntitlementInfo? activeEntitlementInfo,  Package? storeProduct)?  loadSuccess,TResult? Function( Exception exception)?  loadFailure,}) {final _that = this;
switch (_that) {
case SubscriptionDetailsInitial() when initial != null:
return initial();case SubscriptionDetailsLoadInProgress() when loadInProgress != null:
return loadInProgress();case SubscriptionDetailsLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.activeEntitlementInfo,_that.storeProduct);case SubscriptionDetailsLoadFailure() when loadFailure != null:
return loadFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class SubscriptionDetailsInitial implements SubscriptionDetailsState {
  const SubscriptionDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionDetailsState.initial()';
}


}




/// @nodoc


class SubscriptionDetailsLoadInProgress implements SubscriptionDetailsState {
  const SubscriptionDetailsLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionDetailsLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionDetailsState.loadInProgress()';
}


}




/// @nodoc


class SubscriptionDetailsLoadSuccess implements SubscriptionDetailsState {
  const SubscriptionDetailsLoadSuccess({required this.activeEntitlementInfo, required this.storeProduct});
  

 final  EntitlementInfo? activeEntitlementInfo;
 final  Package? storeProduct;

/// Create a copy of SubscriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionDetailsLoadSuccessCopyWith<SubscriptionDetailsLoadSuccess> get copyWith => _$SubscriptionDetailsLoadSuccessCopyWithImpl<SubscriptionDetailsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionDetailsLoadSuccess&&(identical(other.activeEntitlementInfo, activeEntitlementInfo) || other.activeEntitlementInfo == activeEntitlementInfo)&&(identical(other.storeProduct, storeProduct) || other.storeProduct == storeProduct));
}


@override
int get hashCode => Object.hash(runtimeType,activeEntitlementInfo,storeProduct);

@override
String toString() {
  return 'SubscriptionDetailsState.loadSuccess(activeEntitlementInfo: $activeEntitlementInfo, storeProduct: $storeProduct)';
}


}

/// @nodoc
abstract mixin class $SubscriptionDetailsLoadSuccessCopyWith<$Res> implements $SubscriptionDetailsStateCopyWith<$Res> {
  factory $SubscriptionDetailsLoadSuccessCopyWith(SubscriptionDetailsLoadSuccess value, $Res Function(SubscriptionDetailsLoadSuccess) _then) = _$SubscriptionDetailsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 EntitlementInfo? activeEntitlementInfo, Package? storeProduct
});




}
/// @nodoc
class _$SubscriptionDetailsLoadSuccessCopyWithImpl<$Res>
    implements $SubscriptionDetailsLoadSuccessCopyWith<$Res> {
  _$SubscriptionDetailsLoadSuccessCopyWithImpl(this._self, this._then);

  final SubscriptionDetailsLoadSuccess _self;
  final $Res Function(SubscriptionDetailsLoadSuccess) _then;

/// Create a copy of SubscriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activeEntitlementInfo = freezed,Object? storeProduct = freezed,}) {
  return _then(SubscriptionDetailsLoadSuccess(
activeEntitlementInfo: freezed == activeEntitlementInfo ? _self.activeEntitlementInfo : activeEntitlementInfo // ignore: cast_nullable_to_non_nullable
as EntitlementInfo?,storeProduct: freezed == storeProduct ? _self.storeProduct : storeProduct // ignore: cast_nullable_to_non_nullable
as Package?,
  ));
}


}

/// @nodoc


class SubscriptionDetailsLoadFailure implements SubscriptionDetailsState {
  const SubscriptionDetailsLoadFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of SubscriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionDetailsLoadFailureCopyWith<SubscriptionDetailsLoadFailure> get copyWith => _$SubscriptionDetailsLoadFailureCopyWithImpl<SubscriptionDetailsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionDetailsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'SubscriptionDetailsState.loadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $SubscriptionDetailsLoadFailureCopyWith<$Res> implements $SubscriptionDetailsStateCopyWith<$Res> {
  factory $SubscriptionDetailsLoadFailureCopyWith(SubscriptionDetailsLoadFailure value, $Res Function(SubscriptionDetailsLoadFailure) _then) = _$SubscriptionDetailsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$SubscriptionDetailsLoadFailureCopyWithImpl<$Res>
    implements $SubscriptionDetailsLoadFailureCopyWith<$Res> {
  _$SubscriptionDetailsLoadFailureCopyWithImpl(this._self, this._then);

  final SubscriptionDetailsLoadFailure _self;
  final $Res Function(SubscriptionDetailsLoadFailure) _then;

/// Create a copy of SubscriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(SubscriptionDetailsLoadFailure(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
