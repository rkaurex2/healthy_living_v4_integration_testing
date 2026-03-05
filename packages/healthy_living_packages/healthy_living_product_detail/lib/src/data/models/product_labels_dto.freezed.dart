// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_labels_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductLabelsDTO {

 String? get directions; String? get ingredients; String? get warnings;
/// Create a copy of ProductLabelsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLabelsDTOCopyWith<ProductLabelsDTO> get copyWith => _$ProductLabelsDTOCopyWithImpl<ProductLabelsDTO>(this as ProductLabelsDTO, _$identity);

  /// Serializes this ProductLabelsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLabelsDTO&&(identical(other.directions, directions) || other.directions == directions)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.warnings, warnings) || other.warnings == warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,directions,ingredients,warnings);

@override
String toString() {
  return 'ProductLabelsDTO(directions: $directions, ingredients: $ingredients, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class $ProductLabelsDTOCopyWith<$Res>  {
  factory $ProductLabelsDTOCopyWith(ProductLabelsDTO value, $Res Function(ProductLabelsDTO) _then) = _$ProductLabelsDTOCopyWithImpl;
@useResult
$Res call({
 String? directions, String? ingredients, String? warnings
});




}
/// @nodoc
class _$ProductLabelsDTOCopyWithImpl<$Res>
    implements $ProductLabelsDTOCopyWith<$Res> {
  _$ProductLabelsDTOCopyWithImpl(this._self, this._then);

  final ProductLabelsDTO _self;
  final $Res Function(ProductLabelsDTO) _then;

/// Create a copy of ProductLabelsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? directions = freezed,Object? ingredients = freezed,Object? warnings = freezed,}) {
  return _then(_self.copyWith(
directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,warnings: freezed == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLabelsDTO].
extension ProductLabelsDTOPatterns on ProductLabelsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLabelsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLabelsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLabelsDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductLabelsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLabelsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLabelsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? directions,  String? ingredients,  String? warnings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLabelsDTO() when $default != null:
return $default(_that.directions,_that.ingredients,_that.warnings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? directions,  String? ingredients,  String? warnings)  $default,) {final _that = this;
switch (_that) {
case _ProductLabelsDTO():
return $default(_that.directions,_that.ingredients,_that.warnings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? directions,  String? ingredients,  String? warnings)?  $default,) {final _that = this;
switch (_that) {
case _ProductLabelsDTO() when $default != null:
return $default(_that.directions,_that.ingredients,_that.warnings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLabelsDTO implements ProductLabelsDTO {
  const _ProductLabelsDTO({required this.directions, required this.ingredients, required this.warnings});
  factory _ProductLabelsDTO.fromJson(Map<String, dynamic> json) => _$ProductLabelsDTOFromJson(json);

@override final  String? directions;
@override final  String? ingredients;
@override final  String? warnings;

/// Create a copy of ProductLabelsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLabelsDTOCopyWith<_ProductLabelsDTO> get copyWith => __$ProductLabelsDTOCopyWithImpl<_ProductLabelsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLabelsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLabelsDTO&&(identical(other.directions, directions) || other.directions == directions)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.warnings, warnings) || other.warnings == warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,directions,ingredients,warnings);

@override
String toString() {
  return 'ProductLabelsDTO(directions: $directions, ingredients: $ingredients, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class _$ProductLabelsDTOCopyWith<$Res> implements $ProductLabelsDTOCopyWith<$Res> {
  factory _$ProductLabelsDTOCopyWith(_ProductLabelsDTO value, $Res Function(_ProductLabelsDTO) _then) = __$ProductLabelsDTOCopyWithImpl;
@override @useResult
$Res call({
 String? directions, String? ingredients, String? warnings
});




}
/// @nodoc
class __$ProductLabelsDTOCopyWithImpl<$Res>
    implements _$ProductLabelsDTOCopyWith<$Res> {
  __$ProductLabelsDTOCopyWithImpl(this._self, this._then);

  final _ProductLabelsDTO _self;
  final $Res Function(_ProductLabelsDTO) _then;

/// Create a copy of ProductLabelsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? directions = freezed,Object? ingredients = freezed,Object? warnings = freezed,}) {
  return _then(_ProductLabelsDTO(
directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,warnings: freezed == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
