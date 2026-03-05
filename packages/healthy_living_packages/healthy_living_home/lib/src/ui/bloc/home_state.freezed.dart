// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeStarted value)?  homeStarted,TResult Function( CreateListSuccess value)?  createListSuccess,TResult Function( CreateListInProgress value)?  createListInProgress,TResult Function( CreateListInFailure value)?  createListInFailure,TResult Function( ValidateCreateButton value)?  validateCreateButton,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStarted() when homeStarted != null:
return homeStarted(_that);case CreateListSuccess() when createListSuccess != null:
return createListSuccess(_that);case CreateListInProgress() when createListInProgress != null:
return createListInProgress(_that);case CreateListInFailure() when createListInFailure != null:
return createListInFailure(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeStarted value)  homeStarted,required TResult Function( CreateListSuccess value)  createListSuccess,required TResult Function( CreateListInProgress value)  createListInProgress,required TResult Function( CreateListInFailure value)  createListInFailure,required TResult Function( ValidateCreateButton value)  validateCreateButton,}){
final _that = this;
switch (_that) {
case HomeStarted():
return homeStarted(_that);case CreateListSuccess():
return createListSuccess(_that);case CreateListInProgress():
return createListInProgress(_that);case CreateListInFailure():
return createListInFailure(_that);case ValidateCreateButton():
return validateCreateButton(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeStarted value)?  homeStarted,TResult? Function( CreateListSuccess value)?  createListSuccess,TResult? Function( CreateListInProgress value)?  createListInProgress,TResult? Function( CreateListInFailure value)?  createListInFailure,TResult? Function( ValidateCreateButton value)?  validateCreateButton,}){
final _that = this;
switch (_that) {
case HomeStarted() when homeStarted != null:
return homeStarted(_that);case CreateListSuccess() when createListSuccess != null:
return createListSuccess(_that);case CreateListInProgress() when createListInProgress != null:
return createListInProgress(_that);case CreateListInFailure() when createListInFailure != null:
return createListInFailure(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool shouldRefreshPremiumFlag,  bool isSubscriptionExpired)?  homeStarted,TResult Function( String listId)?  createListSuccess,TResult Function()?  createListInProgress,TResult Function( Exception? exception)?  createListInFailure,TResult Function( bool isCreateButtonEnable)?  validateCreateButton,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStarted() when homeStarted != null:
return homeStarted(_that.shouldRefreshPremiumFlag,_that.isSubscriptionExpired);case CreateListSuccess() when createListSuccess != null:
return createListSuccess(_that.listId);case CreateListInProgress() when createListInProgress != null:
return createListInProgress();case CreateListInFailure() when createListInFailure != null:
return createListInFailure(_that.exception);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool shouldRefreshPremiumFlag,  bool isSubscriptionExpired)  homeStarted,required TResult Function( String listId)  createListSuccess,required TResult Function()  createListInProgress,required TResult Function( Exception? exception)  createListInFailure,required TResult Function( bool isCreateButtonEnable)  validateCreateButton,}) {final _that = this;
switch (_that) {
case HomeStarted():
return homeStarted(_that.shouldRefreshPremiumFlag,_that.isSubscriptionExpired);case CreateListSuccess():
return createListSuccess(_that.listId);case CreateListInProgress():
return createListInProgress();case CreateListInFailure():
return createListInFailure(_that.exception);case ValidateCreateButton():
return validateCreateButton(_that.isCreateButtonEnable);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool shouldRefreshPremiumFlag,  bool isSubscriptionExpired)?  homeStarted,TResult? Function( String listId)?  createListSuccess,TResult? Function()?  createListInProgress,TResult? Function( Exception? exception)?  createListInFailure,TResult? Function( bool isCreateButtonEnable)?  validateCreateButton,}) {final _that = this;
switch (_that) {
case HomeStarted() when homeStarted != null:
return homeStarted(_that.shouldRefreshPremiumFlag,_that.isSubscriptionExpired);case CreateListSuccess() when createListSuccess != null:
return createListSuccess(_that.listId);case CreateListInProgress() when createListInProgress != null:
return createListInProgress();case CreateListInFailure() when createListInFailure != null:
return createListInFailure(_that.exception);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case _:
  return null;

}
}

}

/// @nodoc


class HomeStarted implements HomeState {
  const HomeStarted({required this.shouldRefreshPremiumFlag, required this.isSubscriptionExpired});
  

 final  bool shouldRefreshPremiumFlag;
 final  bool isSubscriptionExpired;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStartedCopyWith<HomeStarted> get copyWith => _$HomeStartedCopyWithImpl<HomeStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStarted&&(identical(other.shouldRefreshPremiumFlag, shouldRefreshPremiumFlag) || other.shouldRefreshPremiumFlag == shouldRefreshPremiumFlag)&&(identical(other.isSubscriptionExpired, isSubscriptionExpired) || other.isSubscriptionExpired == isSubscriptionExpired));
}


@override
int get hashCode => Object.hash(runtimeType,shouldRefreshPremiumFlag,isSubscriptionExpired);

@override
String toString() {
  return 'HomeState.homeStarted(shouldRefreshPremiumFlag: $shouldRefreshPremiumFlag, isSubscriptionExpired: $isSubscriptionExpired)';
}


}

/// @nodoc
abstract mixin class $HomeStartedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeStartedCopyWith(HomeStarted value, $Res Function(HomeStarted) _then) = _$HomeStartedCopyWithImpl;
@useResult
$Res call({
 bool shouldRefreshPremiumFlag, bool isSubscriptionExpired
});




}
/// @nodoc
class _$HomeStartedCopyWithImpl<$Res>
    implements $HomeStartedCopyWith<$Res> {
  _$HomeStartedCopyWithImpl(this._self, this._then);

  final HomeStarted _self;
  final $Res Function(HomeStarted) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shouldRefreshPremiumFlag = null,Object? isSubscriptionExpired = null,}) {
  return _then(HomeStarted(
shouldRefreshPremiumFlag: null == shouldRefreshPremiumFlag ? _self.shouldRefreshPremiumFlag : shouldRefreshPremiumFlag // ignore: cast_nullable_to_non_nullable
as bool,isSubscriptionExpired: null == isSubscriptionExpired ? _self.isSubscriptionExpired : isSubscriptionExpired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CreateListSuccess implements HomeState {
  const CreateListSuccess({required this.listId});
  

 final  String listId;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateListSuccessCopyWith<CreateListSuccess> get copyWith => _$CreateListSuccessCopyWithImpl<CreateListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListSuccess&&(identical(other.listId, listId) || other.listId == listId));
}


@override
int get hashCode => Object.hash(runtimeType,listId);

@override
String toString() {
  return 'HomeState.createListSuccess(listId: $listId)';
}


}

/// @nodoc
abstract mixin class $CreateListSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CreateListSuccessCopyWith(CreateListSuccess value, $Res Function(CreateListSuccess) _then) = _$CreateListSuccessCopyWithImpl;
@useResult
$Res call({
 String listId
});




}
/// @nodoc
class _$CreateListSuccessCopyWithImpl<$Res>
    implements $CreateListSuccessCopyWith<$Res> {
  _$CreateListSuccessCopyWithImpl(this._self, this._then);

  final CreateListSuccess _self;
  final $Res Function(CreateListSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listId = null,}) {
  return _then(CreateListSuccess(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateListInProgress implements HomeState {
  const CreateListInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.createListInProgress()';
}


}




/// @nodoc


class CreateListInFailure implements HomeState {
  const CreateListInFailure({this.exception});
  

 final  Exception? exception;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateListInFailureCopyWith<CreateListInFailure> get copyWith => _$CreateListInFailureCopyWithImpl<CreateListInFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListInFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'HomeState.createListInFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CreateListInFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CreateListInFailureCopyWith(CreateListInFailure value, $Res Function(CreateListInFailure) _then) = _$CreateListInFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$CreateListInFailureCopyWithImpl<$Res>
    implements $CreateListInFailureCopyWith<$Res> {
  _$CreateListInFailureCopyWithImpl(this._self, this._then);

  final CreateListInFailure _self;
  final $Res Function(CreateListInFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(CreateListInFailure(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class ValidateCreateButton implements HomeState {
  const ValidateCreateButton({required this.isCreateButtonEnable});
  

 final  bool isCreateButtonEnable;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCreateButtonCopyWith<ValidateCreateButton> get copyWith => _$ValidateCreateButtonCopyWithImpl<ValidateCreateButton>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateCreateButton&&(identical(other.isCreateButtonEnable, isCreateButtonEnable) || other.isCreateButtonEnable == isCreateButtonEnable));
}


@override
int get hashCode => Object.hash(runtimeType,isCreateButtonEnable);

@override
String toString() {
  return 'HomeState.validateCreateButton(isCreateButtonEnable: $isCreateButtonEnable)';
}


}

/// @nodoc
abstract mixin class $ValidateCreateButtonCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ValidateCreateButtonCopyWith(ValidateCreateButton value, $Res Function(ValidateCreateButton) _then) = _$ValidateCreateButtonCopyWithImpl;
@useResult
$Res call({
 bool isCreateButtonEnable
});




}
/// @nodoc
class _$ValidateCreateButtonCopyWithImpl<$Res>
    implements $ValidateCreateButtonCopyWith<$Res> {
  _$ValidateCreateButtonCopyWithImpl(this._self, this._then);

  final ValidateCreateButton _self;
  final $Res Function(ValidateCreateButton) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCreateButtonEnable = null,}) {
  return _then(ValidateCreateButton(
isCreateButtonEnable: null == isCreateButtonEnable ? _self.isCreateButtonEnable : isCreateButtonEnable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
