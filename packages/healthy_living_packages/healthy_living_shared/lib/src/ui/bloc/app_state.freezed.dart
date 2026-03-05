// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppInitial value)?  splashInitial,TResult Function( AppAuthenticationStatus value)?  authenticationStatus,TResult Function( RefreshUserLoginState value)?  refreshUserLoginState,TResult Function( AppUnauthenticatedState value)?  appUnauthenticatedState,TResult Function( RefreshBottomTabs value)?  refreshBottomTabs,TResult Function( SubscribeToPremiumSuccess value)?  subscribeToPremiumSuccess,TResult Function( ExitFromSubmitProductFlow value)?  exitFromSubmitProductFlow,TResult Function( MoveToPaywall value)?  moveToPaywall,TResult Function( MoveToHistory value)?  moveToHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppInitial() when splashInitial != null:
return splashInitial(_that);case AppAuthenticationStatus() when authenticationStatus != null:
return authenticationStatus(_that);case RefreshUserLoginState() when refreshUserLoginState != null:
return refreshUserLoginState(_that);case AppUnauthenticatedState() when appUnauthenticatedState != null:
return appUnauthenticatedState(_that);case RefreshBottomTabs() when refreshBottomTabs != null:
return refreshBottomTabs(_that);case SubscribeToPremiumSuccess() when subscribeToPremiumSuccess != null:
return subscribeToPremiumSuccess(_that);case ExitFromSubmitProductFlow() when exitFromSubmitProductFlow != null:
return exitFromSubmitProductFlow(_that);case MoveToPaywall() when moveToPaywall != null:
return moveToPaywall(_that);case MoveToHistory() when moveToHistory != null:
return moveToHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppInitial value)  splashInitial,required TResult Function( AppAuthenticationStatus value)  authenticationStatus,required TResult Function( RefreshUserLoginState value)  refreshUserLoginState,required TResult Function( AppUnauthenticatedState value)  appUnauthenticatedState,required TResult Function( RefreshBottomTabs value)  refreshBottomTabs,required TResult Function( SubscribeToPremiumSuccess value)  subscribeToPremiumSuccess,required TResult Function( ExitFromSubmitProductFlow value)  exitFromSubmitProductFlow,required TResult Function( MoveToPaywall value)  moveToPaywall,required TResult Function( MoveToHistory value)  moveToHistory,}){
final _that = this;
switch (_that) {
case AppInitial():
return splashInitial(_that);case AppAuthenticationStatus():
return authenticationStatus(_that);case RefreshUserLoginState():
return refreshUserLoginState(_that);case AppUnauthenticatedState():
return appUnauthenticatedState(_that);case RefreshBottomTabs():
return refreshBottomTabs(_that);case SubscribeToPremiumSuccess():
return subscribeToPremiumSuccess(_that);case ExitFromSubmitProductFlow():
return exitFromSubmitProductFlow(_that);case MoveToPaywall():
return moveToPaywall(_that);case MoveToHistory():
return moveToHistory(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppInitial value)?  splashInitial,TResult? Function( AppAuthenticationStatus value)?  authenticationStatus,TResult? Function( RefreshUserLoginState value)?  refreshUserLoginState,TResult? Function( AppUnauthenticatedState value)?  appUnauthenticatedState,TResult? Function( RefreshBottomTabs value)?  refreshBottomTabs,TResult? Function( SubscribeToPremiumSuccess value)?  subscribeToPremiumSuccess,TResult? Function( ExitFromSubmitProductFlow value)?  exitFromSubmitProductFlow,TResult? Function( MoveToPaywall value)?  moveToPaywall,TResult? Function( MoveToHistory value)?  moveToHistory,}){
final _that = this;
switch (_that) {
case AppInitial() when splashInitial != null:
return splashInitial(_that);case AppAuthenticationStatus() when authenticationStatus != null:
return authenticationStatus(_that);case RefreshUserLoginState() when refreshUserLoginState != null:
return refreshUserLoginState(_that);case AppUnauthenticatedState() when appUnauthenticatedState != null:
return appUnauthenticatedState(_that);case RefreshBottomTabs() when refreshBottomTabs != null:
return refreshBottomTabs(_that);case SubscribeToPremiumSuccess() when subscribeToPremiumSuccess != null:
return subscribeToPremiumSuccess(_that);case ExitFromSubmitProductFlow() when exitFromSubmitProductFlow != null:
return exitFromSubmitProductFlow(_that);case MoveToPaywall() when moveToPaywall != null:
return moveToPaywall(_that);case MoveToHistory() when moveToHistory != null:
return moveToHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  splashInitial,TResult Function( bool isAuthenticated,  bool isFtUxCompletedStatus)?  authenticationStatus,TResult Function( DateTime timestamp)?  refreshUserLoginState,TResult Function( DateTime timestamp)?  appUnauthenticatedState,TResult Function( bool isRefresh,  BottomBarRefreshPage bottomBarRefreshPage)?  refreshBottomTabs,TResult Function()?  subscribeToPremiumSuccess,TResult Function( String timestamp)?  exitFromSubmitProductFlow,TResult Function( String timestamp)?  moveToPaywall,TResult Function( String timestamp)?  moveToHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppInitial() when splashInitial != null:
return splashInitial();case AppAuthenticationStatus() when authenticationStatus != null:
return authenticationStatus(_that.isAuthenticated,_that.isFtUxCompletedStatus);case RefreshUserLoginState() when refreshUserLoginState != null:
return refreshUserLoginState(_that.timestamp);case AppUnauthenticatedState() when appUnauthenticatedState != null:
return appUnauthenticatedState(_that.timestamp);case RefreshBottomTabs() when refreshBottomTabs != null:
return refreshBottomTabs(_that.isRefresh,_that.bottomBarRefreshPage);case SubscribeToPremiumSuccess() when subscribeToPremiumSuccess != null:
return subscribeToPremiumSuccess();case ExitFromSubmitProductFlow() when exitFromSubmitProductFlow != null:
return exitFromSubmitProductFlow(_that.timestamp);case MoveToPaywall() when moveToPaywall != null:
return moveToPaywall(_that.timestamp);case MoveToHistory() when moveToHistory != null:
return moveToHistory(_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  splashInitial,required TResult Function( bool isAuthenticated,  bool isFtUxCompletedStatus)  authenticationStatus,required TResult Function( DateTime timestamp)  refreshUserLoginState,required TResult Function( DateTime timestamp)  appUnauthenticatedState,required TResult Function( bool isRefresh,  BottomBarRefreshPage bottomBarRefreshPage)  refreshBottomTabs,required TResult Function()  subscribeToPremiumSuccess,required TResult Function( String timestamp)  exitFromSubmitProductFlow,required TResult Function( String timestamp)  moveToPaywall,required TResult Function( String timestamp)  moveToHistory,}) {final _that = this;
switch (_that) {
case AppInitial():
return splashInitial();case AppAuthenticationStatus():
return authenticationStatus(_that.isAuthenticated,_that.isFtUxCompletedStatus);case RefreshUserLoginState():
return refreshUserLoginState(_that.timestamp);case AppUnauthenticatedState():
return appUnauthenticatedState(_that.timestamp);case RefreshBottomTabs():
return refreshBottomTabs(_that.isRefresh,_that.bottomBarRefreshPage);case SubscribeToPremiumSuccess():
return subscribeToPremiumSuccess();case ExitFromSubmitProductFlow():
return exitFromSubmitProductFlow(_that.timestamp);case MoveToPaywall():
return moveToPaywall(_that.timestamp);case MoveToHistory():
return moveToHistory(_that.timestamp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  splashInitial,TResult? Function( bool isAuthenticated,  bool isFtUxCompletedStatus)?  authenticationStatus,TResult? Function( DateTime timestamp)?  refreshUserLoginState,TResult? Function( DateTime timestamp)?  appUnauthenticatedState,TResult? Function( bool isRefresh,  BottomBarRefreshPage bottomBarRefreshPage)?  refreshBottomTabs,TResult? Function()?  subscribeToPremiumSuccess,TResult? Function( String timestamp)?  exitFromSubmitProductFlow,TResult? Function( String timestamp)?  moveToPaywall,TResult? Function( String timestamp)?  moveToHistory,}) {final _that = this;
switch (_that) {
case AppInitial() when splashInitial != null:
return splashInitial();case AppAuthenticationStatus() when authenticationStatus != null:
return authenticationStatus(_that.isAuthenticated,_that.isFtUxCompletedStatus);case RefreshUserLoginState() when refreshUserLoginState != null:
return refreshUserLoginState(_that.timestamp);case AppUnauthenticatedState() when appUnauthenticatedState != null:
return appUnauthenticatedState(_that.timestamp);case RefreshBottomTabs() when refreshBottomTabs != null:
return refreshBottomTabs(_that.isRefresh,_that.bottomBarRefreshPage);case SubscribeToPremiumSuccess() when subscribeToPremiumSuccess != null:
return subscribeToPremiumSuccess();case ExitFromSubmitProductFlow() when exitFromSubmitProductFlow != null:
return exitFromSubmitProductFlow(_that.timestamp);case MoveToPaywall() when moveToPaywall != null:
return moveToPaywall(_that.timestamp);case MoveToHistory() when moveToHistory != null:
return moveToHistory(_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class AppInitial implements AppState {
  const AppInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.splashInitial()';
}


}




/// @nodoc


class AppAuthenticationStatus implements AppState {
  const AppAuthenticationStatus({required this.isAuthenticated, required this.isFtUxCompletedStatus});
  

 final  bool isAuthenticated;
 final  bool isFtUxCompletedStatus;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppAuthenticationStatusCopyWith<AppAuthenticationStatus> get copyWith => _$AppAuthenticationStatusCopyWithImpl<AppAuthenticationStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppAuthenticationStatus&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.isFtUxCompletedStatus, isFtUxCompletedStatus) || other.isFtUxCompletedStatus == isFtUxCompletedStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated,isFtUxCompletedStatus);

@override
String toString() {
  return 'AppState.authenticationStatus(isAuthenticated: $isAuthenticated, isFtUxCompletedStatus: $isFtUxCompletedStatus)';
}


}

/// @nodoc
abstract mixin class $AppAuthenticationStatusCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppAuthenticationStatusCopyWith(AppAuthenticationStatus value, $Res Function(AppAuthenticationStatus) _then) = _$AppAuthenticationStatusCopyWithImpl;
@useResult
$Res call({
 bool isAuthenticated, bool isFtUxCompletedStatus
});




}
/// @nodoc
class _$AppAuthenticationStatusCopyWithImpl<$Res>
    implements $AppAuthenticationStatusCopyWith<$Res> {
  _$AppAuthenticationStatusCopyWithImpl(this._self, this._then);

  final AppAuthenticationStatus _self;
  final $Res Function(AppAuthenticationStatus) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = null,Object? isFtUxCompletedStatus = null,}) {
  return _then(AppAuthenticationStatus(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,isFtUxCompletedStatus: null == isFtUxCompletedStatus ? _self.isFtUxCompletedStatus : isFtUxCompletedStatus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RefreshUserLoginState implements AppState {
  const RefreshUserLoginState({required this.timestamp});
  

 final  DateTime timestamp;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshUserLoginStateCopyWith<RefreshUserLoginState> get copyWith => _$RefreshUserLoginStateCopyWithImpl<RefreshUserLoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshUserLoginState&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'AppState.refreshUserLoginState(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $RefreshUserLoginStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $RefreshUserLoginStateCopyWith(RefreshUserLoginState value, $Res Function(RefreshUserLoginState) _then) = _$RefreshUserLoginStateCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp
});




}
/// @nodoc
class _$RefreshUserLoginStateCopyWithImpl<$Res>
    implements $RefreshUserLoginStateCopyWith<$Res> {
  _$RefreshUserLoginStateCopyWithImpl(this._self, this._then);

  final RefreshUserLoginState _self;
  final $Res Function(RefreshUserLoginState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(RefreshUserLoginState(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class AppUnauthenticatedState implements AppState {
  const AppUnauthenticatedState({required this.timestamp});
  

 final  DateTime timestamp;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUnauthenticatedStateCopyWith<AppUnauthenticatedState> get copyWith => _$AppUnauthenticatedStateCopyWithImpl<AppUnauthenticatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUnauthenticatedState&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'AppState.appUnauthenticatedState(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $AppUnauthenticatedStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppUnauthenticatedStateCopyWith(AppUnauthenticatedState value, $Res Function(AppUnauthenticatedState) _then) = _$AppUnauthenticatedStateCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp
});




}
/// @nodoc
class _$AppUnauthenticatedStateCopyWithImpl<$Res>
    implements $AppUnauthenticatedStateCopyWith<$Res> {
  _$AppUnauthenticatedStateCopyWithImpl(this._self, this._then);

  final AppUnauthenticatedState _self;
  final $Res Function(AppUnauthenticatedState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(AppUnauthenticatedState(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class RefreshBottomTabs implements AppState {
  const RefreshBottomTabs({required this.isRefresh, required this.bottomBarRefreshPage});
  

 final  bool isRefresh;
 final  BottomBarRefreshPage bottomBarRefreshPage;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshBottomTabsCopyWith<RefreshBottomTabs> get copyWith => _$RefreshBottomTabsCopyWithImpl<RefreshBottomTabs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshBottomTabs&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh)&&(identical(other.bottomBarRefreshPage, bottomBarRefreshPage) || other.bottomBarRefreshPage == bottomBarRefreshPage));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh,bottomBarRefreshPage);

@override
String toString() {
  return 'AppState.refreshBottomTabs(isRefresh: $isRefresh, bottomBarRefreshPage: $bottomBarRefreshPage)';
}


}

/// @nodoc
abstract mixin class $RefreshBottomTabsCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $RefreshBottomTabsCopyWith(RefreshBottomTabs value, $Res Function(RefreshBottomTabs) _then) = _$RefreshBottomTabsCopyWithImpl;
@useResult
$Res call({
 bool isRefresh, BottomBarRefreshPage bottomBarRefreshPage
});




}
/// @nodoc
class _$RefreshBottomTabsCopyWithImpl<$Res>
    implements $RefreshBottomTabsCopyWith<$Res> {
  _$RefreshBottomTabsCopyWithImpl(this._self, this._then);

  final RefreshBottomTabs _self;
  final $Res Function(RefreshBottomTabs) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,Object? bottomBarRefreshPage = null,}) {
  return _then(RefreshBottomTabs(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,bottomBarRefreshPage: null == bottomBarRefreshPage ? _self.bottomBarRefreshPage : bottomBarRefreshPage // ignore: cast_nullable_to_non_nullable
as BottomBarRefreshPage,
  ));
}


}

/// @nodoc


class SubscribeToPremiumSuccess implements AppState {
  const SubscribeToPremiumSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribeToPremiumSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.subscribeToPremiumSuccess()';
}


}




/// @nodoc


class ExitFromSubmitProductFlow implements AppState {
  const ExitFromSubmitProductFlow(this.timestamp);
  

 final  String timestamp;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExitFromSubmitProductFlowCopyWith<ExitFromSubmitProductFlow> get copyWith => _$ExitFromSubmitProductFlowCopyWithImpl<ExitFromSubmitProductFlow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExitFromSubmitProductFlow&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'AppState.exitFromSubmitProductFlow(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ExitFromSubmitProductFlowCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $ExitFromSubmitProductFlowCopyWith(ExitFromSubmitProductFlow value, $Res Function(ExitFromSubmitProductFlow) _then) = _$ExitFromSubmitProductFlowCopyWithImpl;
@useResult
$Res call({
 String timestamp
});




}
/// @nodoc
class _$ExitFromSubmitProductFlowCopyWithImpl<$Res>
    implements $ExitFromSubmitProductFlowCopyWith<$Res> {
  _$ExitFromSubmitProductFlowCopyWithImpl(this._self, this._then);

  final ExitFromSubmitProductFlow _self;
  final $Res Function(ExitFromSubmitProductFlow) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(ExitFromSubmitProductFlow(
null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MoveToPaywall implements AppState {
  const MoveToPaywall(this.timestamp);
  

 final  String timestamp;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveToPaywallCopyWith<MoveToPaywall> get copyWith => _$MoveToPaywallCopyWithImpl<MoveToPaywall>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveToPaywall&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'AppState.moveToPaywall(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $MoveToPaywallCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $MoveToPaywallCopyWith(MoveToPaywall value, $Res Function(MoveToPaywall) _then) = _$MoveToPaywallCopyWithImpl;
@useResult
$Res call({
 String timestamp
});




}
/// @nodoc
class _$MoveToPaywallCopyWithImpl<$Res>
    implements $MoveToPaywallCopyWith<$Res> {
  _$MoveToPaywallCopyWithImpl(this._self, this._then);

  final MoveToPaywall _self;
  final $Res Function(MoveToPaywall) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(MoveToPaywall(
null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MoveToHistory implements AppState {
  const MoveToHistory(this.timestamp);
  

 final  String timestamp;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveToHistoryCopyWith<MoveToHistory> get copyWith => _$MoveToHistoryCopyWithImpl<MoveToHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveToHistory&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'AppState.moveToHistory(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $MoveToHistoryCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $MoveToHistoryCopyWith(MoveToHistory value, $Res Function(MoveToHistory) _then) = _$MoveToHistoryCopyWithImpl;
@useResult
$Res call({
 String timestamp
});




}
/// @nodoc
class _$MoveToHistoryCopyWithImpl<$Res>
    implements $MoveToHistoryCopyWith<$Res> {
  _$MoveToHistoryCopyWithImpl(this._self, this._then);

  final MoveToHistory _self;
  final $Res Function(MoveToHistory) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(MoveToHistory(
null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
