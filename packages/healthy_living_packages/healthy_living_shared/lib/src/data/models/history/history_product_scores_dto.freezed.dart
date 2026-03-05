// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_product_scores_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryProductScoresDTO {

 double? get overall;
/// Create a copy of HistoryProductScoresDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryProductScoresDTOCopyWith<HistoryProductScoresDTO> get copyWith => _$HistoryProductScoresDTOCopyWithImpl<HistoryProductScoresDTO>(this as HistoryProductScoresDTO, _$identity);

  /// Serializes this HistoryProductScoresDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryProductScoresDTO&&(identical(other.overall, overall) || other.overall == overall));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall);

@override
String toString() {
  return 'HistoryProductScoresDTO(overall: $overall)';
}


}

/// @nodoc
abstract mixin class $HistoryProductScoresDTOCopyWith<$Res>  {
  factory $HistoryProductScoresDTOCopyWith(HistoryProductScoresDTO value, $Res Function(HistoryProductScoresDTO) _then) = _$HistoryProductScoresDTOCopyWithImpl;
@useResult
$Res call({
 double? overall
});




}
/// @nodoc
class _$HistoryProductScoresDTOCopyWithImpl<$Res>
    implements $HistoryProductScoresDTOCopyWith<$Res> {
  _$HistoryProductScoresDTOCopyWithImpl(this._self, this._then);

  final HistoryProductScoresDTO _self;
  final $Res Function(HistoryProductScoresDTO) _then;

/// Create a copy of HistoryProductScoresDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overall = freezed,}) {
  return _then(_self.copyWith(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryProductScoresDTO].
extension HistoryProductScoresDTOPatterns on HistoryProductScoresDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryProductScoresDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryProductScoresDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryProductScoresDTO value)  $default,){
final _that = this;
switch (_that) {
case _HistoryProductScoresDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryProductScoresDTO value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryProductScoresDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? overall)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryProductScoresDTO() when $default != null:
return $default(_that.overall);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? overall)  $default,) {final _that = this;
switch (_that) {
case _HistoryProductScoresDTO():
return $default(_that.overall);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? overall)?  $default,) {final _that = this;
switch (_that) {
case _HistoryProductScoresDTO() when $default != null:
return $default(_that.overall);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoryProductScoresDTO implements HistoryProductScoresDTO {
  const _HistoryProductScoresDTO({this.overall});
  factory _HistoryProductScoresDTO.fromJson(Map<String, dynamic> json) => _$HistoryProductScoresDTOFromJson(json);

@override final  double? overall;

/// Create a copy of HistoryProductScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryProductScoresDTOCopyWith<_HistoryProductScoresDTO> get copyWith => __$HistoryProductScoresDTOCopyWithImpl<_HistoryProductScoresDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryProductScoresDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryProductScoresDTO&&(identical(other.overall, overall) || other.overall == overall));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall);

@override
String toString() {
  return 'HistoryProductScoresDTO(overall: $overall)';
}


}

/// @nodoc
abstract mixin class _$HistoryProductScoresDTOCopyWith<$Res> implements $HistoryProductScoresDTOCopyWith<$Res> {
  factory _$HistoryProductScoresDTOCopyWith(_HistoryProductScoresDTO value, $Res Function(_HistoryProductScoresDTO) _then) = __$HistoryProductScoresDTOCopyWithImpl;
@override @useResult
$Res call({
 double? overall
});




}
/// @nodoc
class __$HistoryProductScoresDTOCopyWithImpl<$Res>
    implements _$HistoryProductScoresDTOCopyWith<$Res> {
  __$HistoryProductScoresDTOCopyWithImpl(this._self, this._then);

  final _HistoryProductScoresDTO _self;
  final $Res Function(_HistoryProductScoresDTO) _then;

/// Create a copy of HistoryProductScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overall = freezed,}) {
  return _then(_HistoryProductScoresDTO(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
