// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductImageAttributeModel {

@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]') String get picture;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String get role;
/// Create a copy of ProductImageAttributeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageAttributeModelCopyWith<ProductImageAttributeModel> get copyWith => _$ProductImageAttributeModelCopyWithImpl<ProductImageAttributeModel>(this as ProductImageAttributeModel, _$identity);

  /// Serializes this ProductImageAttributeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImageAttributeModel&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,picture,role);

@override
String toString() {
  return 'ProductImageAttributeModel(picture: $picture, role: $role)';
}


}

/// @nodoc
abstract mixin class $ProductImageAttributeModelCopyWith<$Res>  {
  factory $ProductImageAttributeModelCopyWith(ProductImageAttributeModel value, $Res Function(ProductImageAttributeModel) _then) = _$ProductImageAttributeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]') String picture,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String role
});




}
/// @nodoc
class _$ProductImageAttributeModelCopyWithImpl<$Res>
    implements $ProductImageAttributeModelCopyWith<$Res> {
  _$ProductImageAttributeModelCopyWithImpl(this._self, this._then);

  final ProductImageAttributeModel _self;
  final $Res Function(ProductImageAttributeModel) _then;

/// Create a copy of ProductImageAttributeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? picture = null,Object? role = null,}) {
  return _then(_self.copyWith(
picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImageAttributeModel].
extension ProductImageAttributeModelPatterns on ProductImageAttributeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImageAttributeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImageAttributeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImageAttributeModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductImageAttributeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImageAttributeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImageAttributeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]')  String picture, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImageAttributeModel() when $default != null:
return $default(_that.picture,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]')  String picture, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role)  $default,) {final _that = this;
switch (_that) {
case _ProductImageAttributeModel():
return $default(_that.picture,_that.role);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]')  String picture, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role)?  $default,) {final _that = this;
switch (_that) {
case _ProductImageAttributeModel() when $default != null:
return $default(_that.picture,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImageAttributeModel implements ProductImageAttributeModel {
  const _ProductImageAttributeModel({@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]') required this.picture, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') required this.role});
  factory _ProductImageAttributeModel.fromJson(Map<String, dynamic> json) => _$ProductImageAttributeModelFromJson(json);

@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]') final  String picture;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') final  String role;

/// Create a copy of ProductImageAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageAttributeModelCopyWith<_ProductImageAttributeModel> get copyWith => __$ProductImageAttributeModelCopyWithImpl<_ProductImageAttributeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageAttributeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImageAttributeModel&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,picture,role);

@override
String toString() {
  return 'ProductImageAttributeModel(picture: $picture, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ProductImageAttributeModelCopyWith<$Res> implements $ProductImageAttributeModelCopyWith<$Res> {
  factory _$ProductImageAttributeModelCopyWith(_ProductImageAttributeModel value, $Res Function(_ProductImageAttributeModel) _then) = __$ProductImageAttributeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]') String picture,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String role
});




}
/// @nodoc
class __$ProductImageAttributeModelCopyWithImpl<$Res>
    implements _$ProductImageAttributeModelCopyWith<$Res> {
  __$ProductImageAttributeModelCopyWithImpl(this._self, this._then);

  final _ProductImageAttributeModel _self;
  final $Res Function(_ProductImageAttributeModel) _then;

/// Create a copy of ProductImageAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? picture = null,Object? role = null,}) {
  return _then(_ProductImageAttributeModel(
picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
