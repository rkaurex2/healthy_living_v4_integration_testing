// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimingsModel {

 List<LabelTimingModel> get labels; double? get llmSeconds; double? get ocrSeconds; double? get totalSeconds; double? get stitchSeconds;
/// Create a copy of TimingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimingsModelCopyWith<TimingsModel> get copyWith => _$TimingsModelCopyWithImpl<TimingsModel>(this as TimingsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimingsModel&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.llmSeconds, llmSeconds) || other.llmSeconds == llmSeconds)&&(identical(other.ocrSeconds, ocrSeconds) || other.ocrSeconds == ocrSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.stitchSeconds, stitchSeconds) || other.stitchSeconds == stitchSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(labels),llmSeconds,ocrSeconds,totalSeconds,stitchSeconds);

@override
String toString() {
  return 'TimingsModel(labels: $labels, llmSeconds: $llmSeconds, ocrSeconds: $ocrSeconds, totalSeconds: $totalSeconds, stitchSeconds: $stitchSeconds)';
}


}

/// @nodoc
abstract mixin class $TimingsModelCopyWith<$Res>  {
  factory $TimingsModelCopyWith(TimingsModel value, $Res Function(TimingsModel) _then) = _$TimingsModelCopyWithImpl;
@useResult
$Res call({
 List<LabelTimingModel> labels, double? llmSeconds, double? ocrSeconds, double? totalSeconds, double? stitchSeconds
});




}
/// @nodoc
class _$TimingsModelCopyWithImpl<$Res>
    implements $TimingsModelCopyWith<$Res> {
  _$TimingsModelCopyWithImpl(this._self, this._then);

  final TimingsModel _self;
  final $Res Function(TimingsModel) _then;

/// Create a copy of TimingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labels = null,Object? llmSeconds = freezed,Object? ocrSeconds = freezed,Object? totalSeconds = freezed,Object? stitchSeconds = freezed,}) {
  return _then(_self.copyWith(
labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelTimingModel>,llmSeconds: freezed == llmSeconds ? _self.llmSeconds : llmSeconds // ignore: cast_nullable_to_non_nullable
as double?,ocrSeconds: freezed == ocrSeconds ? _self.ocrSeconds : ocrSeconds // ignore: cast_nullable_to_non_nullable
as double?,totalSeconds: freezed == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as double?,stitchSeconds: freezed == stitchSeconds ? _self.stitchSeconds : stitchSeconds // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimingsModel].
extension TimingsModelPatterns on TimingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimingsModel value)  $default,){
final _that = this;
switch (_that) {
case _TimingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TimingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LabelTimingModel> labels,  double? llmSeconds,  double? ocrSeconds,  double? totalSeconds,  double? stitchSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimingsModel() when $default != null:
return $default(_that.labels,_that.llmSeconds,_that.ocrSeconds,_that.totalSeconds,_that.stitchSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LabelTimingModel> labels,  double? llmSeconds,  double? ocrSeconds,  double? totalSeconds,  double? stitchSeconds)  $default,) {final _that = this;
switch (_that) {
case _TimingsModel():
return $default(_that.labels,_that.llmSeconds,_that.ocrSeconds,_that.totalSeconds,_that.stitchSeconds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LabelTimingModel> labels,  double? llmSeconds,  double? ocrSeconds,  double? totalSeconds,  double? stitchSeconds)?  $default,) {final _that = this;
switch (_that) {
case _TimingsModel() when $default != null:
return $default(_that.labels,_that.llmSeconds,_that.ocrSeconds,_that.totalSeconds,_that.stitchSeconds);case _:
  return null;

}
}

}

/// @nodoc


class _TimingsModel implements TimingsModel {
  const _TimingsModel({required final  List<LabelTimingModel> labels, required this.llmSeconds, required this.ocrSeconds, required this.totalSeconds, required this.stitchSeconds}): _labels = labels;
  

 final  List<LabelTimingModel> _labels;
@override List<LabelTimingModel> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

@override final  double? llmSeconds;
@override final  double? ocrSeconds;
@override final  double? totalSeconds;
@override final  double? stitchSeconds;

/// Create a copy of TimingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimingsModelCopyWith<_TimingsModel> get copyWith => __$TimingsModelCopyWithImpl<_TimingsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimingsModel&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.llmSeconds, llmSeconds) || other.llmSeconds == llmSeconds)&&(identical(other.ocrSeconds, ocrSeconds) || other.ocrSeconds == ocrSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.stitchSeconds, stitchSeconds) || other.stitchSeconds == stitchSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_labels),llmSeconds,ocrSeconds,totalSeconds,stitchSeconds);

@override
String toString() {
  return 'TimingsModel(labels: $labels, llmSeconds: $llmSeconds, ocrSeconds: $ocrSeconds, totalSeconds: $totalSeconds, stitchSeconds: $stitchSeconds)';
}


}

/// @nodoc
abstract mixin class _$TimingsModelCopyWith<$Res> implements $TimingsModelCopyWith<$Res> {
  factory _$TimingsModelCopyWith(_TimingsModel value, $Res Function(_TimingsModel) _then) = __$TimingsModelCopyWithImpl;
@override @useResult
$Res call({
 List<LabelTimingModel> labels, double? llmSeconds, double? ocrSeconds, double? totalSeconds, double? stitchSeconds
});




}
/// @nodoc
class __$TimingsModelCopyWithImpl<$Res>
    implements _$TimingsModelCopyWith<$Res> {
  __$TimingsModelCopyWithImpl(this._self, this._then);

  final _TimingsModel _self;
  final $Res Function(_TimingsModel) _then;

/// Create a copy of TimingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labels = null,Object? llmSeconds = freezed,Object? ocrSeconds = freezed,Object? totalSeconds = freezed,Object? stitchSeconds = freezed,}) {
  return _then(_TimingsModel(
labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelTimingModel>,llmSeconds: freezed == llmSeconds ? _self.llmSeconds : llmSeconds // ignore: cast_nullable_to_non_nullable
as double?,ocrSeconds: freezed == ocrSeconds ? _self.ocrSeconds : ocrSeconds // ignore: cast_nullable_to_non_nullable
as double?,totalSeconds: freezed == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as double?,stitchSeconds: freezed == stitchSeconds ? _self.stitchSeconds : stitchSeconds // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
