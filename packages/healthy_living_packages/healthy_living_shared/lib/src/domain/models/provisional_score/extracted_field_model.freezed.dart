// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extracted_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtractedFieldModel {

 String? get value; String? get ocrValue; double? get confidence;
/// Create a copy of ExtractedFieldModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<ExtractedFieldModel> get copyWith => _$ExtractedFieldModelCopyWithImpl<ExtractedFieldModel>(this as ExtractedFieldModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractedFieldModel&&(identical(other.value, value) || other.value == value)&&(identical(other.ocrValue, ocrValue) || other.ocrValue == ocrValue)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}


@override
int get hashCode => Object.hash(runtimeType,value,ocrValue,confidence);

@override
String toString() {
  return 'ExtractedFieldModel(value: $value, ocrValue: $ocrValue, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $ExtractedFieldModelCopyWith<$Res>  {
  factory $ExtractedFieldModelCopyWith(ExtractedFieldModel value, $Res Function(ExtractedFieldModel) _then) = _$ExtractedFieldModelCopyWithImpl;
@useResult
$Res call({
 String? value, String? ocrValue, double? confidence
});




}
/// @nodoc
class _$ExtractedFieldModelCopyWithImpl<$Res>
    implements $ExtractedFieldModelCopyWith<$Res> {
  _$ExtractedFieldModelCopyWithImpl(this._self, this._then);

  final ExtractedFieldModel _self;
  final $Res Function(ExtractedFieldModel) _then;

/// Create a copy of ExtractedFieldModel
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


/// Adds pattern-matching-related methods to [ExtractedFieldModel].
extension ExtractedFieldModelPatterns on ExtractedFieldModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractedFieldModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractedFieldModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractedFieldModel value)  $default,){
final _that = this;
switch (_that) {
case _ExtractedFieldModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractedFieldModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractedFieldModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? value,  String? ocrValue,  double? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractedFieldModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? value,  String? ocrValue,  double? confidence)  $default,) {final _that = this;
switch (_that) {
case _ExtractedFieldModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? value,  String? ocrValue,  double? confidence)?  $default,) {final _that = this;
switch (_that) {
case _ExtractedFieldModel() when $default != null:
return $default(_that.value,_that.ocrValue,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc


class _ExtractedFieldModel implements ExtractedFieldModel {
  const _ExtractedFieldModel({required this.value, required this.ocrValue, required this.confidence});
  

@override final  String? value;
@override final  String? ocrValue;
@override final  double? confidence;

/// Create a copy of ExtractedFieldModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractedFieldModelCopyWith<_ExtractedFieldModel> get copyWith => __$ExtractedFieldModelCopyWithImpl<_ExtractedFieldModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractedFieldModel&&(identical(other.value, value) || other.value == value)&&(identical(other.ocrValue, ocrValue) || other.ocrValue == ocrValue)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}


@override
int get hashCode => Object.hash(runtimeType,value,ocrValue,confidence);

@override
String toString() {
  return 'ExtractedFieldModel(value: $value, ocrValue: $ocrValue, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$ExtractedFieldModelCopyWith<$Res> implements $ExtractedFieldModelCopyWith<$Res> {
  factory _$ExtractedFieldModelCopyWith(_ExtractedFieldModel value, $Res Function(_ExtractedFieldModel) _then) = __$ExtractedFieldModelCopyWithImpl;
@override @useResult
$Res call({
 String? value, String? ocrValue, double? confidence
});




}
/// @nodoc
class __$ExtractedFieldModelCopyWithImpl<$Res>
    implements _$ExtractedFieldModelCopyWith<$Res> {
  __$ExtractedFieldModelCopyWithImpl(this._self, this._then);

  final _ExtractedFieldModel _self;
  final $Res Function(_ExtractedFieldModel) _then;

/// Create a copy of ExtractedFieldModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? ocrValue = freezed,Object? confidence = freezed,}) {
  return _then(_ExtractedFieldModel(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,ocrValue: freezed == ocrValue ? _self.ocrValue : ocrValue // ignore: cast_nullable_to_non_nullable
as String?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
