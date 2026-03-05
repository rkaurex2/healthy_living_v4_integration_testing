// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_image_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveImageRequestModel {

 String get uuid;@JsonKey(name: 'product_images_attributes') Map<String, ProductImagesAttributesRequestModel> get productImagesAttributes;
/// Create a copy of RemoveImageRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveImageRequestModelCopyWith<RemoveImageRequestModel> get copyWith => _$RemoveImageRequestModelCopyWithImpl<RemoveImageRequestModel>(this as RemoveImageRequestModel, _$identity);

  /// Serializes this RemoveImageRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveImageRequestModel&&(identical(other.uuid, uuid) || other.uuid == uuid)&&const DeepCollectionEquality().equals(other.productImagesAttributes, productImagesAttributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,const DeepCollectionEquality().hash(productImagesAttributes));

@override
String toString() {
  return 'RemoveImageRequestModel(uuid: $uuid, productImagesAttributes: $productImagesAttributes)';
}


}

/// @nodoc
abstract mixin class $RemoveImageRequestModelCopyWith<$Res>  {
  factory $RemoveImageRequestModelCopyWith(RemoveImageRequestModel value, $Res Function(RemoveImageRequestModel) _then) = _$RemoveImageRequestModelCopyWithImpl;
@useResult
$Res call({
 String uuid,@JsonKey(name: 'product_images_attributes') Map<String, ProductImagesAttributesRequestModel> productImagesAttributes
});




}
/// @nodoc
class _$RemoveImageRequestModelCopyWithImpl<$Res>
    implements $RemoveImageRequestModelCopyWith<$Res> {
  _$RemoveImageRequestModelCopyWithImpl(this._self, this._then);

  final RemoveImageRequestModel _self;
  final $Res Function(RemoveImageRequestModel) _then;

/// Create a copy of RemoveImageRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uuid = null,Object? productImagesAttributes = null,}) {
  return _then(_self.copyWith(
uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,productImagesAttributes: null == productImagesAttributes ? _self.productImagesAttributes : productImagesAttributes // ignore: cast_nullable_to_non_nullable
as Map<String, ProductImagesAttributesRequestModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoveImageRequestModel].
extension RemoveImageRequestModelPatterns on RemoveImageRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveImageRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveImageRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveImageRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RemoveImageRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveImageRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveImageRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uuid, @JsonKey(name: 'product_images_attributes')  Map<String, ProductImagesAttributesRequestModel> productImagesAttributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveImageRequestModel() when $default != null:
return $default(_that.uuid,_that.productImagesAttributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uuid, @JsonKey(name: 'product_images_attributes')  Map<String, ProductImagesAttributesRequestModel> productImagesAttributes)  $default,) {final _that = this;
switch (_that) {
case _RemoveImageRequestModel():
return $default(_that.uuid,_that.productImagesAttributes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uuid, @JsonKey(name: 'product_images_attributes')  Map<String, ProductImagesAttributesRequestModel> productImagesAttributes)?  $default,) {final _that = this;
switch (_that) {
case _RemoveImageRequestModel() when $default != null:
return $default(_that.uuid,_that.productImagesAttributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveImageRequestModel implements RemoveImageRequestModel {
  const _RemoveImageRequestModel({required this.uuid, @JsonKey(name: 'product_images_attributes') required final  Map<String, ProductImagesAttributesRequestModel> productImagesAttributes}): _productImagesAttributes = productImagesAttributes;
  factory _RemoveImageRequestModel.fromJson(Map<String, dynamic> json) => _$RemoveImageRequestModelFromJson(json);

@override final  String uuid;
 final  Map<String, ProductImagesAttributesRequestModel> _productImagesAttributes;
@override@JsonKey(name: 'product_images_attributes') Map<String, ProductImagesAttributesRequestModel> get productImagesAttributes {
  if (_productImagesAttributes is EqualUnmodifiableMapView) return _productImagesAttributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_productImagesAttributes);
}


/// Create a copy of RemoveImageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveImageRequestModelCopyWith<_RemoveImageRequestModel> get copyWith => __$RemoveImageRequestModelCopyWithImpl<_RemoveImageRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveImageRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveImageRequestModel&&(identical(other.uuid, uuid) || other.uuid == uuid)&&const DeepCollectionEquality().equals(other._productImagesAttributes, _productImagesAttributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,const DeepCollectionEquality().hash(_productImagesAttributes));

@override
String toString() {
  return 'RemoveImageRequestModel(uuid: $uuid, productImagesAttributes: $productImagesAttributes)';
}


}

/// @nodoc
abstract mixin class _$RemoveImageRequestModelCopyWith<$Res> implements $RemoveImageRequestModelCopyWith<$Res> {
  factory _$RemoveImageRequestModelCopyWith(_RemoveImageRequestModel value, $Res Function(_RemoveImageRequestModel) _then) = __$RemoveImageRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String uuid,@JsonKey(name: 'product_images_attributes') Map<String, ProductImagesAttributesRequestModel> productImagesAttributes
});




}
/// @nodoc
class __$RemoveImageRequestModelCopyWithImpl<$Res>
    implements _$RemoveImageRequestModelCopyWith<$Res> {
  __$RemoveImageRequestModelCopyWithImpl(this._self, this._then);

  final _RemoveImageRequestModel _self;
  final $Res Function(_RemoveImageRequestModel) _then;

/// Create a copy of RemoveImageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uuid = null,Object? productImagesAttributes = null,}) {
  return _then(_RemoveImageRequestModel(
uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,productImagesAttributes: null == productImagesAttributes ? _self._productImagesAttributes : productImagesAttributes // ignore: cast_nullable_to_non_nullable
as Map<String, ProductImagesAttributesRequestModel>,
  ));
}


}

// dart format on
