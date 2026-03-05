// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extracted_field_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtractedFieldDTO {

 String? get value;@JsonKey(name: 'ocr_value') String? get ocrValue; double? get confidence;
/// Create a copy of ExtractedFieldDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<ExtractedFieldDTO> get copyWith => _$ExtractedFieldDTOCopyWithImpl<ExtractedFieldDTO>(this as ExtractedFieldDTO, _$identity);

  /// Serializes this ExtractedFieldDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractedFieldDTO&&(identical(other.value, value) || other.value == value)&&(identical(other.ocrValue, ocrValue) || other.ocrValue == ocrValue)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,ocrValue,confidence);

@override
String toString() {
  return 'ExtractedFieldDTO(value: $value, ocrValue: $ocrValue, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $ExtractedFieldDTOCopyWith<$Res>  {
  factory $ExtractedFieldDTOCopyWith(ExtractedFieldDTO value, $Res Function(ExtractedFieldDTO) _then) = _$ExtractedFieldDTOCopyWithImpl;
@useResult
$Res call({
 String? value,@JsonKey(name: 'ocr_value') String? ocrValue, double? confidence
});




}
/// @nodoc
class _$ExtractedFieldDTOCopyWithImpl<$Res>
    implements $ExtractedFieldDTOCopyWith<$Res> {
  _$ExtractedFieldDTOCopyWithImpl(this._self, this._then);

  final ExtractedFieldDTO _self;
  final $Res Function(ExtractedFieldDTO) _then;

/// Create a copy of ExtractedFieldDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? ocrValue = freezed,Object? confidence = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,ocrValue: freezed == ocrValue ? _self.ocrValue : ocrValue // ignore: cast_nullable_to_non_nullable
as String?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtractedFieldDTO].
extension ExtractedFieldDTOPatterns on ExtractedFieldDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractedFieldDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractedFieldDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractedFieldDTO value)  $default,){
final _that = this;
switch (_that) {
case _ExtractedFieldDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractedFieldDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractedFieldDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? value, @JsonKey(name: 'ocr_value')  String? ocrValue,  double? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractedFieldDTO() when $default != null:
return $default(_that.value,_that.ocrValue,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? value, @JsonKey(name: 'ocr_value')  String? ocrValue,  double? confidence)  $default,) {final _that = this;
switch (_that) {
case _ExtractedFieldDTO():
return $default(_that.value,_that.ocrValue,_that.confidence);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? value, @JsonKey(name: 'ocr_value')  String? ocrValue,  double? confidence)?  $default,) {final _that = this;
switch (_that) {
case _ExtractedFieldDTO() when $default != null:
return $default(_that.value,_that.ocrValue,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtractedFieldDTO implements ExtractedFieldDTO {
  const _ExtractedFieldDTO({this.value, @JsonKey(name: 'ocr_value') this.ocrValue, this.confidence});
  factory _ExtractedFieldDTO.fromJson(Map<String, dynamic> json) => _$ExtractedFieldDTOFromJson(json);

@override final  String? value;
@override@JsonKey(name: 'ocr_value') final  String? ocrValue;
@override final  double? confidence;

/// Create a copy of ExtractedFieldDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractedFieldDTOCopyWith<_ExtractedFieldDTO> get copyWith => __$ExtractedFieldDTOCopyWithImpl<_ExtractedFieldDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtractedFieldDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractedFieldDTO&&(identical(other.value, value) || other.value == value)&&(identical(other.ocrValue, ocrValue) || other.ocrValue == ocrValue)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,ocrValue,confidence);

@override
String toString() {
  return 'ExtractedFieldDTO(value: $value, ocrValue: $ocrValue, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$ExtractedFieldDTOCopyWith<$Res> implements $ExtractedFieldDTOCopyWith<$Res> {
  factory _$ExtractedFieldDTOCopyWith(_ExtractedFieldDTO value, $Res Function(_ExtractedFieldDTO) _then) = __$ExtractedFieldDTOCopyWithImpl;
@override @useResult
$Res call({
 String? value,@JsonKey(name: 'ocr_value') String? ocrValue, double? confidence
});




}
/// @nodoc
class __$ExtractedFieldDTOCopyWithImpl<$Res>
    implements _$ExtractedFieldDTOCopyWith<$Res> {
  __$ExtractedFieldDTOCopyWithImpl(this._self, this._then);

  final _ExtractedFieldDTO _self;
  final $Res Function(_ExtractedFieldDTO) _then;

/// Create a copy of ExtractedFieldDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? ocrValue = freezed,Object? confidence = freezed,}) {
  return _then(_ExtractedFieldDTO(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,ocrValue: freezed == ocrValue ? _self.ocrValue : ocrValue // ignore: cast_nullable_to_non_nullable
as String?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
