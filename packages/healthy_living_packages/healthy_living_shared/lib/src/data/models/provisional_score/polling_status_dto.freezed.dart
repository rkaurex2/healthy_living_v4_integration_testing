// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polling_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollingStatusDTO {

 int get interval; bool get complete; String get stage;@JsonKey(name: 'estimated_progress') int? get estimatedProgress;@JsonKey(name: 'estimated_time_remaining') int? get estimatedTimeRemaining;@JsonKey(name: 'queue_position') int? get queuePosition; String? get message;
/// Create a copy of PollingStatusDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollingStatusDTOCopyWith<PollingStatusDTO> get copyWith => _$PollingStatusDTOCopyWithImpl<PollingStatusDTO>(this as PollingStatusDTO, _$identity);

  /// Serializes this PollingStatusDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollingStatusDTO&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.estimatedProgress, estimatedProgress) || other.estimatedProgress == estimatedProgress)&&(identical(other.estimatedTimeRemaining, estimatedTimeRemaining) || other.estimatedTimeRemaining == estimatedTimeRemaining)&&(identical(other.queuePosition, queuePosition) || other.queuePosition == queuePosition)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interval,complete,stage,estimatedProgress,estimatedTimeRemaining,queuePosition,message);

@override
String toString() {
  return 'PollingStatusDTO(interval: $interval, complete: $complete, stage: $stage, estimatedProgress: $estimatedProgress, estimatedTimeRemaining: $estimatedTimeRemaining, queuePosition: $queuePosition, message: $message)';
}


}

/// @nodoc
abstract mixin class $PollingStatusDTOCopyWith<$Res>  {
  factory $PollingStatusDTOCopyWith(PollingStatusDTO value, $Res Function(PollingStatusDTO) _then) = _$PollingStatusDTOCopyWithImpl;
@useResult
$Res call({
 int interval, bool complete, String stage,@JsonKey(name: 'estimated_progress') int? estimatedProgress,@JsonKey(name: 'estimated_time_remaining') int? estimatedTimeRemaining,@JsonKey(name: 'queue_position') int? queuePosition, String? message
});




}
/// @nodoc
class _$PollingStatusDTOCopyWithImpl<$Res>
    implements $PollingStatusDTOCopyWith<$Res> {
  _$PollingStatusDTOCopyWithImpl(this._self, this._then);

  final PollingStatusDTO _self;
  final $Res Function(PollingStatusDTO) _then;

/// Create a copy of PollingStatusDTO
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


/// Adds pattern-matching-related methods to [PollingStatusDTO].
extension PollingStatusDTOPatterns on PollingStatusDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollingStatusDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollingStatusDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollingStatusDTO value)  $default,){
final _that = this;
switch (_that) {
case _PollingStatusDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollingStatusDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PollingStatusDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int interval,  bool complete,  String stage, @JsonKey(name: 'estimated_progress')  int? estimatedProgress, @JsonKey(name: 'estimated_time_remaining')  int? estimatedTimeRemaining, @JsonKey(name: 'queue_position')  int? queuePosition,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollingStatusDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int interval,  bool complete,  String stage, @JsonKey(name: 'estimated_progress')  int? estimatedProgress, @JsonKey(name: 'estimated_time_remaining')  int? estimatedTimeRemaining, @JsonKey(name: 'queue_position')  int? queuePosition,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PollingStatusDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int interval,  bool complete,  String stage, @JsonKey(name: 'estimated_progress')  int? estimatedProgress, @JsonKey(name: 'estimated_time_remaining')  int? estimatedTimeRemaining, @JsonKey(name: 'queue_position')  int? queuePosition,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PollingStatusDTO() when $default != null:
return $default(_that.interval,_that.complete,_that.stage,_that.estimatedProgress,_that.estimatedTimeRemaining,_that.queuePosition,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollingStatusDTO implements PollingStatusDTO {
  const _PollingStatusDTO({required this.interval, required this.complete, required this.stage, @JsonKey(name: 'estimated_progress') this.estimatedProgress, @JsonKey(name: 'estimated_time_remaining') this.estimatedTimeRemaining, @JsonKey(name: 'queue_position') this.queuePosition, this.message});
  factory _PollingStatusDTO.fromJson(Map<String, dynamic> json) => _$PollingStatusDTOFromJson(json);

@override final  int interval;
@override final  bool complete;
@override final  String stage;
@override@JsonKey(name: 'estimated_progress') final  int? estimatedProgress;
@override@JsonKey(name: 'estimated_time_remaining') final  int? estimatedTimeRemaining;
@override@JsonKey(name: 'queue_position') final  int? queuePosition;
@override final  String? message;

/// Create a copy of PollingStatusDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollingStatusDTOCopyWith<_PollingStatusDTO> get copyWith => __$PollingStatusDTOCopyWithImpl<_PollingStatusDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollingStatusDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollingStatusDTO&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.estimatedProgress, estimatedProgress) || other.estimatedProgress == estimatedProgress)&&(identical(other.estimatedTimeRemaining, estimatedTimeRemaining) || other.estimatedTimeRemaining == estimatedTimeRemaining)&&(identical(other.queuePosition, queuePosition) || other.queuePosition == queuePosition)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interval,complete,stage,estimatedProgress,estimatedTimeRemaining,queuePosition,message);

@override
String toString() {
  return 'PollingStatusDTO(interval: $interval, complete: $complete, stage: $stage, estimatedProgress: $estimatedProgress, estimatedTimeRemaining: $estimatedTimeRemaining, queuePosition: $queuePosition, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PollingStatusDTOCopyWith<$Res> implements $PollingStatusDTOCopyWith<$Res> {
  factory _$PollingStatusDTOCopyWith(_PollingStatusDTO value, $Res Function(_PollingStatusDTO) _then) = __$PollingStatusDTOCopyWithImpl;
@override @useResult
$Res call({
 int interval, bool complete, String stage,@JsonKey(name: 'estimated_progress') int? estimatedProgress,@JsonKey(name: 'estimated_time_remaining') int? estimatedTimeRemaining,@JsonKey(name: 'queue_position') int? queuePosition, String? message
});




}
/// @nodoc
class __$PollingStatusDTOCopyWithImpl<$Res>
    implements _$PollingStatusDTOCopyWith<$Res> {
  __$PollingStatusDTOCopyWithImpl(this._self, this._then);

  final _PollingStatusDTO _self;
  final $Res Function(_PollingStatusDTO) _then;

/// Create a copy of PollingStatusDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interval = null,Object? complete = null,Object? stage = null,Object? estimatedProgress = freezed,Object? estimatedTimeRemaining = freezed,Object? queuePosition = freezed,Object? message = freezed,}) {
  return _then(_PollingStatusDTO(
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
