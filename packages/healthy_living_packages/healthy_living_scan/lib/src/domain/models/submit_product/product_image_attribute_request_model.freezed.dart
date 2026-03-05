// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductImageAttributeRequestModel {

@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String get role;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]') String get uuid;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]') String get upc;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]') String get productType;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false) String? get id;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false) String? get label;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false) String? get filename;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false) String? get name;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false) String? get productName;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]') bool get destroy;
/// Create a copy of ProductImageAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageAttributeRequestModelCopyWith<ProductImageAttributeRequestModel> get copyWith => _$ProductImageAttributeRequestModelCopyWithImpl<ProductImageAttributeRequestModel>(this as ProductImageAttributeRequestModel, _$identity);

  /// Serializes this ProductImageAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImageAttributeRequestModel&&(identical(other.role, role) || other.role == role)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.upc, upc) || other.upc == upc)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.name, name) || other.name == name)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,uuid,upc,productType,id,label,filename,name,productName,destroy);

@override
String toString() {
  return 'ProductImageAttributeRequestModel(role: $role, uuid: $uuid, upc: $upc, productType: $productType, id: $id, label: $label, filename: $filename, name: $name, productName: $productName, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $ProductImageAttributeRequestModelCopyWith<$Res>  {
  factory $ProductImageAttributeRequestModelCopyWith(ProductImageAttributeRequestModel value, $Res Function(ProductImageAttributeRequestModel) _then) = _$ProductImageAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String role,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]') String uuid,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]') String upc,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]') String productType,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false) String? label,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false) String? filename,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false) String? name,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false) String? productName,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]') bool destroy
});




}
/// @nodoc
class _$ProductImageAttributeRequestModelCopyWithImpl<$Res>
    implements $ProductImageAttributeRequestModelCopyWith<$Res> {
  _$ProductImageAttributeRequestModelCopyWithImpl(this._self, this._then);

  final ProductImageAttributeRequestModel _self;
  final $Res Function(ProductImageAttributeRequestModel) _then;

/// Create a copy of ProductImageAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? uuid = null,Object? upc = null,Object? productType = null,Object? id = freezed,Object? label = freezed,Object? filename = freezed,Object? name = freezed,Object? productName = freezed,Object? destroy = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImageAttributeRequestModel].
extension ProductImageAttributeRequestModelPatterns on ProductImageAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImageAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImageAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImageAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]')  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false)  String? label, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false)  String? filename, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false)  String? name, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false)  String? productName, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]')  bool destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel() when $default != null:
return $default(_that.role,_that.uuid,_that.upc,_that.productType,_that.id,_that.label,_that.filename,_that.name,_that.productName,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]')  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false)  String? label, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false)  String? filename, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false)  String? name, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false)  String? productName, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]')  bool destroy)  $default,) {final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel():
return $default(_that.role,_that.uuid,_that.upc,_that.productType,_that.id,_that.label,_that.filename,_that.name,_that.productName,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String role, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]')  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false)  String? label, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false)  String? filename, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false)  String? name, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false)  String? productName, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]')  bool destroy)?  $default,) {final _that = this;
switch (_that) {
case _ProductImageAttributeRequestModel() when $default != null:
return $default(_that.role,_that.uuid,_that.upc,_that.productType,_that.id,_that.label,_that.filename,_that.name,_that.productName,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImageAttributeRequestModel implements ProductImageAttributeRequestModel {
  const _ProductImageAttributeRequestModel({@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') required this.role, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]') required this.uuid, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]') required this.upc, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]') required this.productType, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false) this.id, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false) this.label, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false) this.filename, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false) this.name, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false) this.productName, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]') this.destroy = false});
  factory _ProductImageAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$ProductImageAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') final  String role;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]') final  String uuid;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]') final  String upc;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]') final  String productType;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false) final  String? id;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false) final  String? label;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false) final  String? filename;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false) final  String? name;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false) final  String? productName;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]') final  bool destroy;

/// Create a copy of ProductImageAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageAttributeRequestModelCopyWith<_ProductImageAttributeRequestModel> get copyWith => __$ProductImageAttributeRequestModelCopyWithImpl<_ProductImageAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImageAttributeRequestModel&&(identical(other.role, role) || other.role == role)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.upc, upc) || other.upc == upc)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.name, name) || other.name == name)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,uuid,upc,productType,id,label,filename,name,productName,destroy);

@override
String toString() {
  return 'ProductImageAttributeRequestModel(role: $role, uuid: $uuid, upc: $upc, productType: $productType, id: $id, label: $label, filename: $filename, name: $name, productName: $productName, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$ProductImageAttributeRequestModelCopyWith<$Res> implements $ProductImageAttributeRequestModelCopyWith<$Res> {
  factory _$ProductImageAttributeRequestModelCopyWith(_ProductImageAttributeRequestModel value, $Res Function(_ProductImageAttributeRequestModel) _then) = __$ProductImageAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String role,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][uuid]') String uuid,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][upc]') String upc,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_type]') String productType,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][label]', includeIfNull: false) String? label,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][filename]', includeIfNull: false) String? filename,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][name]', includeIfNull: false) String? name,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][product_name]', includeIfNull: false) String? productName,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][_destroy]') bool destroy
});




}
/// @nodoc
class __$ProductImageAttributeRequestModelCopyWithImpl<$Res>
    implements _$ProductImageAttributeRequestModelCopyWith<$Res> {
  __$ProductImageAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _ProductImageAttributeRequestModel _self;
  final $Res Function(_ProductImageAttributeRequestModel) _then;

/// Create a copy of ProductImageAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? uuid = null,Object? upc = null,Object? productType = null,Object? id = freezed,Object? label = freezed,Object? filename = freezed,Object? name = freezed,Object? productName = freezed,Object? destroy = null,}) {
  return _then(_ProductImageAttributeRequestModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
