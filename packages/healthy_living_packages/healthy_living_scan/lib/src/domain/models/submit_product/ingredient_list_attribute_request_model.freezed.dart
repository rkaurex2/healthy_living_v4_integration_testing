// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientListAttributeRequestModel {

@JsonKey(name: 'raw_text') String get rawText; String get source;
/// Create a copy of IngredientListAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientListAttributeRequestModelCopyWith<IngredientListAttributeRequestModel> get copyWith => _$IngredientListAttributeRequestModelCopyWithImpl<IngredientListAttributeRequestModel>(this as IngredientListAttributeRequestModel, _$identity);

  /// Serializes this IngredientListAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientListAttributeRequestModel&&(identical(other.rawText, rawText) || other.rawText == rawText)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawText,source);

@override
String toString() {
  return 'IngredientListAttributeRequestModel(rawText: $rawText, source: $source)';
}


}

/// @nodoc
abstract mixin class $IngredientListAttributeRequestModelCopyWith<$Res>  {
  factory $IngredientListAttributeRequestModelCopyWith(IngredientListAttributeRequestModel value, $Res Function(IngredientListAttributeRequestModel) _then) = _$IngredientListAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'raw_text') String rawText, String source
});




}
/// @nodoc
class _$IngredientListAttributeRequestModelCopyWithImpl<$Res>
    implements $IngredientListAttributeRequestModelCopyWith<$Res> {
  _$IngredientListAttributeRequestModelCopyWithImpl(this._self, this._then);

  final IngredientListAttributeRequestModel _self;
  final $Res Function(IngredientListAttributeRequestModel) _then;

/// Create a copy of IngredientListAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawText = null,Object? source = null,}) {
  return _then(_self.copyWith(
rawText: null == rawText ? _self.rawText : rawText // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientListAttributeRequestModel].
extension IngredientListAttributeRequestModelPatterns on IngredientListAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientListAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientListAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientListAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'raw_text')  String rawText,  String source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel() when $default != null:
return $default(_that.rawText,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'raw_text')  String rawText,  String source)  $default,) {final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel():
return $default(_that.rawText,_that.source);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'raw_text')  String rawText,  String source)?  $default,) {final _that = this;
switch (_that) {
case _IngredientListAttributeRequestModel() when $default != null:
return $default(_that.rawText,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientListAttributeRequestModel extends IngredientListAttributeRequestModel {
  const _IngredientListAttributeRequestModel({@JsonKey(name: 'raw_text') required this.rawText, required this.source}): super._();
  factory _IngredientListAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$IngredientListAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'raw_text') final  String rawText;
@override final  String source;

/// Create a copy of IngredientListAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientListAttributeRequestModelCopyWith<_IngredientListAttributeRequestModel> get copyWith => __$IngredientListAttributeRequestModelCopyWithImpl<_IngredientListAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientListAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientListAttributeRequestModel&&(identical(other.rawText, rawText) || other.rawText == rawText)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawText,source);

@override
String toString() {
  return 'IngredientListAttributeRequestModel(rawText: $rawText, source: $source)';
}


}

/// @nodoc
abstract mixin class _$IngredientListAttributeRequestModelCopyWith<$Res> implements $IngredientListAttributeRequestModelCopyWith<$Res> {
  factory _$IngredientListAttributeRequestModelCopyWith(_IngredientListAttributeRequestModel value, $Res Function(_IngredientListAttributeRequestModel) _then) = __$IngredientListAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'raw_text') String rawText, String source
});




}
/// @nodoc
class __$IngredientListAttributeRequestModelCopyWithImpl<$Res>
    implements _$IngredientListAttributeRequestModelCopyWith<$Res> {
  __$IngredientListAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _IngredientListAttributeRequestModel _self;
  final $Res Function(_IngredientListAttributeRequestModel) _then;

/// Create a copy of IngredientListAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawText = null,Object? source = null,}) {
  return _then(_IngredientListAttributeRequestModel(
rawText: null == rawText ? _self.rawText : rawText // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
