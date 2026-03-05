// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimingsDTO {

 List<LabelTimingDTO>? get labels;@JsonKey(name: 'llm_seconds') double? get llmSeconds;@JsonKey(name: 'ocr_seconds') double? get ocrSeconds;@JsonKey(name: 'total_seconds') double? get totalSeconds;@JsonKey(name: 'stitch_seconds') double? get stitchSeconds;
/// Create a copy of TimingsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimingsDTOCopyWith<TimingsDTO> get copyWith => _$TimingsDTOCopyWithImpl<TimingsDTO>(this as TimingsDTO, _$identity);

  /// Serializes this TimingsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimingsDTO&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.llmSeconds, llmSeconds) || other.llmSeconds == llmSeconds)&&(identical(other.ocrSeconds, ocrSeconds) || other.ocrSeconds == ocrSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.stitchSeconds, stitchSeconds) || other.stitchSeconds == stitchSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(labels),llmSeconds,ocrSeconds,totalSeconds,stitchSeconds);

@override
String toString() {
  return 'TimingsDTO(labels: $labels, llmSeconds: $llmSeconds, ocrSeconds: $ocrSeconds, totalSeconds: $totalSeconds, stitchSeconds: $stitchSeconds)';
}


}

/// @nodoc
abstract mixin class $TimingsDTOCopyWith<$Res>  {
  factory $TimingsDTOCopyWith(TimingsDTO value, $Res Function(TimingsDTO) _then) = _$TimingsDTOCopyWithImpl;
@useResult
$Res call({
 List<LabelTimingDTO>? labels,@JsonKey(name: 'llm_seconds') double? llmSeconds,@JsonKey(name: 'ocr_seconds') double? ocrSeconds,@JsonKey(name: 'total_seconds') double? totalSeconds,@JsonKey(name: 'stitch_seconds') double? stitchSeconds
});




}
/// @nodoc
class _$TimingsDTOCopyWithImpl<$Res>
    implements $TimingsDTOCopyWith<$Res> {
  _$TimingsDTOCopyWithImpl(this._self, this._then);

  final TimingsDTO _self;
  final $Res Function(TimingsDTO) _then;

/// Create a copy of TimingsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labels = freezed,Object? llmSeconds = freezed,Object? ocrSeconds = freezed,Object? totalSeconds = freezed,Object? stitchSeconds = freezed,}) {
  return _then(_self.copyWith(
labels: freezed == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelTimingDTO>?,llmSeconds: freezed == llmSeconds ? _self.llmSeconds : llmSeconds // ignore: cast_nullable_to_non_nullable
as double?,ocrSeconds: freezed == ocrSeconds ? _self.ocrSeconds : ocrSeconds // ignore: cast_nullable_to_non_nullable
as double?,totalSeconds: freezed == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as double?,stitchSeconds: freezed == stitchSeconds ? _self.stitchSeconds : stitchSeconds // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimingsDTO].
extension TimingsDTOPatterns on TimingsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimingsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimingsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimingsDTO value)  $default,){
final _that = this;
switch (_that) {
case _TimingsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimingsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _TimingsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LabelTimingDTO>? labels, @JsonKey(name: 'llm_seconds')  double? llmSeconds, @JsonKey(name: 'ocr_seconds')  double? ocrSeconds, @JsonKey(name: 'total_seconds')  double? totalSeconds, @JsonKey(name: 'stitch_seconds')  double? stitchSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimingsDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LabelTimingDTO>? labels, @JsonKey(name: 'llm_seconds')  double? llmSeconds, @JsonKey(name: 'ocr_seconds')  double? ocrSeconds, @JsonKey(name: 'total_seconds')  double? totalSeconds, @JsonKey(name: 'stitch_seconds')  double? stitchSeconds)  $default,) {final _that = this;
switch (_that) {
case _TimingsDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LabelTimingDTO>? labels, @JsonKey(name: 'llm_seconds')  double? llmSeconds, @JsonKey(name: 'ocr_seconds')  double? ocrSeconds, @JsonKey(name: 'total_seconds')  double? totalSeconds, @JsonKey(name: 'stitch_seconds')  double? stitchSeconds)?  $default,) {final _that = this;
switch (_that) {
case _TimingsDTO() when $default != null:
return $default(_that.labels,_that.llmSeconds,_that.ocrSeconds,_that.totalSeconds,_that.stitchSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimingsDTO implements TimingsDTO {
  const _TimingsDTO({final  List<LabelTimingDTO>? labels, @JsonKey(name: 'llm_seconds') this.llmSeconds, @JsonKey(name: 'ocr_seconds') this.ocrSeconds, @JsonKey(name: 'total_seconds') this.totalSeconds, @JsonKey(name: 'stitch_seconds') this.stitchSeconds}): _labels = labels;
  factory _TimingsDTO.fromJson(Map<String, dynamic> json) => _$TimingsDTOFromJson(json);

 final  List<LabelTimingDTO>? _labels;
@override List<LabelTimingDTO>? get labels {
  final value = _labels;
  if (value == null) return null;
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'llm_seconds') final  double? llmSeconds;
@override@JsonKey(name: 'ocr_seconds') final  double? ocrSeconds;
@override@JsonKey(name: 'total_seconds') final  double? totalSeconds;
@override@JsonKey(name: 'stitch_seconds') final  double? stitchSeconds;

/// Create a copy of TimingsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimingsDTOCopyWith<_TimingsDTO> get copyWith => __$TimingsDTOCopyWithImpl<_TimingsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimingsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimingsDTO&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.llmSeconds, llmSeconds) || other.llmSeconds == llmSeconds)&&(identical(other.ocrSeconds, ocrSeconds) || other.ocrSeconds == ocrSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.stitchSeconds, stitchSeconds) || other.stitchSeconds == stitchSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_labels),llmSeconds,ocrSeconds,totalSeconds,stitchSeconds);

@override
String toString() {
  return 'TimingsDTO(labels: $labels, llmSeconds: $llmSeconds, ocrSeconds: $ocrSeconds, totalSeconds: $totalSeconds, stitchSeconds: $stitchSeconds)';
}


}

/// @nodoc
abstract mixin class _$TimingsDTOCopyWith<$Res> implements $TimingsDTOCopyWith<$Res> {
  factory _$TimingsDTOCopyWith(_TimingsDTO value, $Res Function(_TimingsDTO) _then) = __$TimingsDTOCopyWithImpl;
@override @useResult
$Res call({
 List<LabelTimingDTO>? labels,@JsonKey(name: 'llm_seconds') double? llmSeconds,@JsonKey(name: 'ocr_seconds') double? ocrSeconds,@JsonKey(name: 'total_seconds') double? totalSeconds,@JsonKey(name: 'stitch_seconds') double? stitchSeconds
});




}
/// @nodoc
class __$TimingsDTOCopyWithImpl<$Res>
    implements _$TimingsDTOCopyWith<$Res> {
  __$TimingsDTOCopyWithImpl(this._self, this._then);

  final _TimingsDTO _self;
  final $Res Function(_TimingsDTO) _then;

/// Create a copy of TimingsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labels = freezed,Object? llmSeconds = freezed,Object? ocrSeconds = freezed,Object? totalSeconds = freezed,Object? stitchSeconds = freezed,}) {
  return _then(_TimingsDTO(
labels: freezed == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelTimingDTO>?,llmSeconds: freezed == llmSeconds ? _self.llmSeconds : llmSeconds // ignore: cast_nullable_to_non_nullable
as double?,ocrSeconds: freezed == ocrSeconds ? _self.ocrSeconds : ocrSeconds // ignore: cast_nullable_to_non_nullable
as double?,totalSeconds: freezed == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as double?,stitchSeconds: freezed == stitchSeconds ? _self.stitchSeconds : stitchSeconds // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
