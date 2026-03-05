// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState()';
}


}

/// @nodoc
class $MyAccountStateCopyWith<$Res>  {
$MyAccountStateCopyWith(MyAccountState _, $Res Function(MyAccountState) __);
}


/// Adds pattern-matching-related methods to [MyAccountState].
extension MyAccountStatePatterns on MyAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyAccountInitial value)?  initial,TResult Function( MyAccountLoadInProgress value)?  loading,TResult Function( MyAccountFailure value)?  error,TResult Function( MyAccountSignOutSuccess value)?  signOutSuccess,TResult Function( MyAccountDeleteUserSuccess value)?  deleteUserSuccess,TResult Function( MyAccountCopyRevenueCatIdSuccess value)?  copyRevenueCatIdSuccess,TResult Function( MyAccountCopyRevenueCatIdFailure value)?  copyRevenueCatIdFailure,TResult Function( StartedIngredientPreference value)?  startedIngredientPreference,TResult Function( ManageIngredientPreference value)?  manageIngredientPreference,TResult Function( OnTapIngredientPreference value)?  onTapIngredientPreference,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyAccountInitial() when initial != null:
return initial(_that);case MyAccountLoadInProgress() when loading != null:
return loading(_that);case MyAccountFailure() when error != null:
return error(_that);case MyAccountSignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case MyAccountDeleteUserSuccess() when deleteUserSuccess != null:
return deleteUserSuccess(_that);case MyAccountCopyRevenueCatIdSuccess() when copyRevenueCatIdSuccess != null:
return copyRevenueCatIdSuccess(_that);case MyAccountCopyRevenueCatIdFailure() when copyRevenueCatIdFailure != null:
return copyRevenueCatIdFailure(_that);case StartedIngredientPreference() when startedIngredientPreference != null:
return startedIngredientPreference(_that);case ManageIngredientPreference() when manageIngredientPreference != null:
return manageIngredientPreference(_that);case OnTapIngredientPreference() when onTapIngredientPreference != null:
return onTapIngredientPreference(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyAccountInitial value)  initial,required TResult Function( MyAccountLoadInProgress value)  loading,required TResult Function( MyAccountFailure value)  error,required TResult Function( MyAccountSignOutSuccess value)  signOutSuccess,required TResult Function( MyAccountDeleteUserSuccess value)  deleteUserSuccess,required TResult Function( MyAccountCopyRevenueCatIdSuccess value)  copyRevenueCatIdSuccess,required TResult Function( MyAccountCopyRevenueCatIdFailure value)  copyRevenueCatIdFailure,required TResult Function( StartedIngredientPreference value)  startedIngredientPreference,required TResult Function( ManageIngredientPreference value)  manageIngredientPreference,required TResult Function( OnTapIngredientPreference value)  onTapIngredientPreference,}){
final _that = this;
switch (_that) {
case MyAccountInitial():
return initial(_that);case MyAccountLoadInProgress():
return loading(_that);case MyAccountFailure():
return error(_that);case MyAccountSignOutSuccess():
return signOutSuccess(_that);case MyAccountDeleteUserSuccess():
return deleteUserSuccess(_that);case MyAccountCopyRevenueCatIdSuccess():
return copyRevenueCatIdSuccess(_that);case MyAccountCopyRevenueCatIdFailure():
return copyRevenueCatIdFailure(_that);case StartedIngredientPreference():
return startedIngredientPreference(_that);case ManageIngredientPreference():
return manageIngredientPreference(_that);case OnTapIngredientPreference():
return onTapIngredientPreference(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyAccountInitial value)?  initial,TResult? Function( MyAccountLoadInProgress value)?  loading,TResult? Function( MyAccountFailure value)?  error,TResult? Function( MyAccountSignOutSuccess value)?  signOutSuccess,TResult? Function( MyAccountDeleteUserSuccess value)?  deleteUserSuccess,TResult? Function( MyAccountCopyRevenueCatIdSuccess value)?  copyRevenueCatIdSuccess,TResult? Function( MyAccountCopyRevenueCatIdFailure value)?  copyRevenueCatIdFailure,TResult? Function( StartedIngredientPreference value)?  startedIngredientPreference,TResult? Function( ManageIngredientPreference value)?  manageIngredientPreference,TResult? Function( OnTapIngredientPreference value)?  onTapIngredientPreference,}){
final _that = this;
switch (_that) {
case MyAccountInitial() when initial != null:
return initial(_that);case MyAccountLoadInProgress() when loading != null:
return loading(_that);case MyAccountFailure() when error != null:
return error(_that);case MyAccountSignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case MyAccountDeleteUserSuccess() when deleteUserSuccess != null:
return deleteUserSuccess(_that);case MyAccountCopyRevenueCatIdSuccess() when copyRevenueCatIdSuccess != null:
return copyRevenueCatIdSuccess(_that);case MyAccountCopyRevenueCatIdFailure() when copyRevenueCatIdFailure != null:
return copyRevenueCatIdFailure(_that);case StartedIngredientPreference() when startedIngredientPreference != null:
return startedIngredientPreference(_that);case ManageIngredientPreference() when manageIngredientPreference != null:
return manageIngredientPreference(_that);case OnTapIngredientPreference() when onTapIngredientPreference != null:
return onTapIngredientPreference(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Exception exception)?  error,TResult Function()?  signOutSuccess,TResult Function()?  deleteUserSuccess,TResult Function()?  copyRevenueCatIdSuccess,TResult Function()?  copyRevenueCatIdFailure,TResult Function()?  startedIngredientPreference,TResult Function()?  manageIngredientPreference,TResult Function()?  onTapIngredientPreference,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyAccountInitial() when initial != null:
return initial();case MyAccountLoadInProgress() when loading != null:
return loading();case MyAccountFailure() when error != null:
return error(_that.exception);case MyAccountSignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case MyAccountDeleteUserSuccess() when deleteUserSuccess != null:
return deleteUserSuccess();case MyAccountCopyRevenueCatIdSuccess() when copyRevenueCatIdSuccess != null:
return copyRevenueCatIdSuccess();case MyAccountCopyRevenueCatIdFailure() when copyRevenueCatIdFailure != null:
return copyRevenueCatIdFailure();case StartedIngredientPreference() when startedIngredientPreference != null:
return startedIngredientPreference();case ManageIngredientPreference() when manageIngredientPreference != null:
return manageIngredientPreference();case OnTapIngredientPreference() when onTapIngredientPreference != null:
return onTapIngredientPreference();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Exception exception)  error,required TResult Function()  signOutSuccess,required TResult Function()  deleteUserSuccess,required TResult Function()  copyRevenueCatIdSuccess,required TResult Function()  copyRevenueCatIdFailure,required TResult Function()  startedIngredientPreference,required TResult Function()  manageIngredientPreference,required TResult Function()  onTapIngredientPreference,}) {final _that = this;
switch (_that) {
case MyAccountInitial():
return initial();case MyAccountLoadInProgress():
return loading();case MyAccountFailure():
return error(_that.exception);case MyAccountSignOutSuccess():
return signOutSuccess();case MyAccountDeleteUserSuccess():
return deleteUserSuccess();case MyAccountCopyRevenueCatIdSuccess():
return copyRevenueCatIdSuccess();case MyAccountCopyRevenueCatIdFailure():
return copyRevenueCatIdFailure();case StartedIngredientPreference():
return startedIngredientPreference();case ManageIngredientPreference():
return manageIngredientPreference();case OnTapIngredientPreference():
return onTapIngredientPreference();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Exception exception)?  error,TResult? Function()?  signOutSuccess,TResult? Function()?  deleteUserSuccess,TResult? Function()?  copyRevenueCatIdSuccess,TResult? Function()?  copyRevenueCatIdFailure,TResult? Function()?  startedIngredientPreference,TResult? Function()?  manageIngredientPreference,TResult? Function()?  onTapIngredientPreference,}) {final _that = this;
switch (_that) {
case MyAccountInitial() when initial != null:
return initial();case MyAccountLoadInProgress() when loading != null:
return loading();case MyAccountFailure() when error != null:
return error(_that.exception);case MyAccountSignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case MyAccountDeleteUserSuccess() when deleteUserSuccess != null:
return deleteUserSuccess();case MyAccountCopyRevenueCatIdSuccess() when copyRevenueCatIdSuccess != null:
return copyRevenueCatIdSuccess();case MyAccountCopyRevenueCatIdFailure() when copyRevenueCatIdFailure != null:
return copyRevenueCatIdFailure();case StartedIngredientPreference() when startedIngredientPreference != null:
return startedIngredientPreference();case ManageIngredientPreference() when manageIngredientPreference != null:
return manageIngredientPreference();case OnTapIngredientPreference() when onTapIngredientPreference != null:
return onTapIngredientPreference();case _:
  return null;

}
}

}

/// @nodoc


class MyAccountInitial implements MyAccountState {
  const MyAccountInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.initial()';
}


}




/// @nodoc


class MyAccountLoadInProgress implements MyAccountState {
  const MyAccountLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.loading()';
}


}




/// @nodoc


class MyAccountFailure implements MyAccountState {
  const MyAccountFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of MyAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAccountFailureCopyWith<MyAccountFailure> get copyWith => _$MyAccountFailureCopyWithImpl<MyAccountFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'MyAccountState.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $MyAccountFailureCopyWith<$Res> implements $MyAccountStateCopyWith<$Res> {
  factory $MyAccountFailureCopyWith(MyAccountFailure value, $Res Function(MyAccountFailure) _then) = _$MyAccountFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$MyAccountFailureCopyWithImpl<$Res>
    implements $MyAccountFailureCopyWith<$Res> {
  _$MyAccountFailureCopyWithImpl(this._self, this._then);

  final MyAccountFailure _self;
  final $Res Function(MyAccountFailure) _then;

/// Create a copy of MyAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(MyAccountFailure(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class MyAccountSignOutSuccess implements MyAccountState {
  const MyAccountSignOutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountSignOutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.signOutSuccess()';
}


}




/// @nodoc


class MyAccountDeleteUserSuccess implements MyAccountState {
  const MyAccountDeleteUserSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountDeleteUserSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.deleteUserSuccess()';
}


}




/// @nodoc


class MyAccountCopyRevenueCatIdSuccess implements MyAccountState {
  const MyAccountCopyRevenueCatIdSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountCopyRevenueCatIdSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.copyRevenueCatIdSuccess()';
}


}




/// @nodoc


class MyAccountCopyRevenueCatIdFailure implements MyAccountState {
  const MyAccountCopyRevenueCatIdFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountCopyRevenueCatIdFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.copyRevenueCatIdFailure()';
}


}




/// @nodoc


class StartedIngredientPreference implements MyAccountState {
  const StartedIngredientPreference();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartedIngredientPreference);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.startedIngredientPreference()';
}


}




/// @nodoc


class ManageIngredientPreference implements MyAccountState {
  const ManageIngredientPreference();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageIngredientPreference);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.manageIngredientPreference()';
}


}




/// @nodoc


class OnTapIngredientPreference implements MyAccountState {
  const OnTapIngredientPreference();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapIngredientPreference);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountState.onTapIngredientPreference()';
}


}




// dart format on
