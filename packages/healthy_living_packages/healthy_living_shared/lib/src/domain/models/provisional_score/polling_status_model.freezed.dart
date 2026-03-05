// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polling_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PollingStatusModel {

 int get interval; bool get complete; String get stage; int? get estimatedProgress; int? get estimatedTimeRemaining; int? get queuePosition; String? get message;
/// Create a copy of PollingStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollingStatusModelCopyWith<PollingStatusModel> get copyWith => _$PollingStatusModelCopyWithImpl<PollingStatusModel>(this as PollingStatusModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollingStatusModel&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.estimatedProgress, estimatedProgress) || other.estimatedProgress == estimatedProgress)&&(identical(other.estimatedTimeRemaining, estimatedTimeRemaining) || other.estimatedTimeRemaining == estimatedTimeRemaining)&&(identical(other.queuePosition, queuePosition) || other.queuePosition == queuePosition)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,interval,complete,stage,estimatedProgress,estimatedTimeRemaining,queuePosition,message);

@override
String toString() {
  return 'PollingStatusModel(interval: $interval, complete: $complete, stage: $stage, estimatedProgress: $estimatedProgress, estimatedTimeRemaining: $estimatedTimeRemaining, queuePosition: $queuePosition, message: $message)';
}


}

/// @nodoc
abstract mixin class $PollingStatusModelCopyWith<$Res>  {
  factory $PollingStatusModelCopyWith(PollingStatusModel value, $Res Function(PollingStatusModel) _then) = _$PollingStatusModelCopyWithImpl;
@useResult
$Res call({
 int interval, bool complete, String stage, int? estimatedProgress, int? estimatedTimeRemaining, int? queuePosition, String? message
});




}
/// @nodoc
class _$PollingStatusModelCopyWithImpl<$Res>
    implements $PollingStatusModelCopyWith<$Res> {
  _$PollingStatusModelCopyWithImpl(this._self, this._then);

  final PollingStatusModel _self;
  final $Res Function(PollingStatusModel) _then;

/// Create a copy of PollingStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interval = null,Object? complete = null,Object? stage = null,Object? estimatedProgress = freezed,Object? estimatedTimeRemaining = freezed,Object? queuePosition = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,estimatedProgress: freezed == estimatedProgress ? _self.estimatedProgress : estimatedProgress // ignore: cast_nullable_to_non_nullable
as int?,estimatedTimeRemaining: freezed == estimatedTimeRemaining ? _self.estimatedTimeRemaining : estimatedTimeRemaining // ignore: cast_nullable_to_non_nullable
as int?,queuePosition: freezed == queuePosition ? _self.queuePosition : queuePosition // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PollingStatusModel].
extension PollingStatusModelPatterns on PollingStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollingStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollingStatusModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollingStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _PollingStatusModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollingStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _PollingStatusModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int interval,  bool complete,  String stage,  int? estimatedProgress,  int? estimatedTimeRemaining,  int? queuePosition,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollingStatusModel() when $default != null:
return $default(_that.interval,_that.complete,_that.stage,_that.estimatedProgress,_that.estimatedTimeRemaining,_that.queuePosition,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int interval,  bool complete,  String stage,  int? estimatedProgress,  int? estimatedTimeRemaining,  int? queuePosition,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PollingStatusModel():
return $default(_that.interval,_that.complete,_that.stage,_that.estimatedProgress,_that.estimatedTimeRemaining,_that.queuePosition,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int interval,  bool complete,  String stage,  int? estimatedProgress,  int? estimatedTimeRemaining,  int? queuePosition,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PollingStatusModel() when $default != null:
return $default(_that.interval,_that.complete,_that.stage,_that.estimatedProgress,_that.estimatedTimeRemaining,_that.queuePosition,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PollingStatusModel implements PollingStatusModel {
  const _PollingStatusModel({required this.interval, required this.complete, required this.stage, this.estimatedProgress, this.estimatedTimeRemaining, this.queuePosition, this.message});
  

@override final  int interval;
@override final  bool complete;
@override final  String stage;
@override final  int? estimatedProgress;
@override final  int? estimatedTimeRemaining;
@override final  int? queuePosition;
@override final  String? message;

/// Create a copy of PollingStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollingStatusModelCopyWith<_PollingStatusModel> get copyWith => __$PollingStatusModelCopyWithImpl<_PollingStatusModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollingStatusModel&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.estimatedProgress, estimatedProgress) || other.estimatedProgress == estimatedProgress)&&(identical(other.estimatedTimeRemaining, estimatedTimeRemaining) || other.estimatedTimeRemaining == estimatedTimeRemaining)&&(identical(other.queuePosition, queuePosition) || other.queuePosition == queuePosition)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,interval,complete,stage,estimatedProgress,estimatedTimeRemaining,queuePosition,message);

@override
String toString() {
  return 'PollingStatusModel(interval: $interval, complete: $complete, stage: $stage, estimatedProgress: $estimatedProgress, estimatedTimeRemaining: $estimatedTimeRemaining, queuePosition: $queuePosition, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PollingStatusModelCopyWith<$Res> implements $PollingStatusModelCopyWith<$Res> {
  factory _$PollingStatusModelCopyWith(_PollingStatusModel value, $Res Function(_PollingStatusModel) _then) = __$PollingStatusModelCopyWithImpl;
@override @useResult
$Res call({
 int interval, bool complete, String stage, int? estimatedProgress, int? estimatedTimeRemaining, int? queuePosition, String? message
});




}
/// @nodoc
class __$PollingStatusModelCopyWithImpl<$Res>
    implements _$PollingStatusModelCopyWith<$Res> {
  __$PollingStatusModelCopyWithImpl(this._self, this._then);

  final _PollingStatusModel _self;
  final $Res Function(_PollingStatusModel) _then;

/// Create a copy of PollingStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interval = null,Object? complete = null,Object? stage = null,Object? estimatedProgress = freezed,Object? estimatedTimeRemaining = freezed,Object? queuePosition = freezed,Object? message = freezed,}) {
  return _then(_PollingStatusModel(
interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,estimatedProgress: freezed == estimatedProgress ? _self.estimatedProgress : estimatedProgress // ignore: cast_nullable_to_non_nullable
as int?,estimatedTimeRemaining: freezed == estimatedTimeRemaining ? _self.estimatedTimeRemaining : estimatedTimeRemaining // ignore: cast_nullable_to_non_nullable
as int?,queuePosition: freezed == queuePosition ? _self.queuePosition : queuePosition // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
