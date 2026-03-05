// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_submission_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductSubmissionRequestModel {

@JsonKey(name: 'uuid', includeIfNull: false) String get uuid;@JsonKey(name: 'crowd_sourced_product_submission[upc]') String get upc;@JsonKey(name: 'crowd_sourced_product_submission[product_type]') String get productType;@JsonKey(name: 'crowd_sourced_product_submission[uuid]') String get crowdSourcedUUID;@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String get pictureRole; String get picture;@JsonKey(name: 'name', includeIfNull: false) String? get name;@JsonKey(name: 'description', includeIfNull: false) String? get description;@JsonKey(name: 'trigger_ocr') bool get triggerOcr;
/// Create a copy of ProductSubmissionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSubmissionRequestModelCopyWith<ProductSubmissionRequestModel> get copyWith => _$ProductSubmissionRequestModelCopyWithImpl<ProductSubmissionRequestModel>(this as ProductSubmissionRequestModel, _$identity);

  /// Serializes this ProductSubmissionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSubmissionRequestModel&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.upc, upc) || other.upc == upc)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.crowdSourcedUUID, crowdSourcedUUID) || other.crowdSourcedUUID == crowdSourcedUUID)&&(identical(other.pictureRole, pictureRole) || other.pictureRole == pictureRole)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.triggerOcr, triggerOcr) || other.triggerOcr == triggerOcr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,upc,productType,crowdSourcedUUID,pictureRole,picture,name,description,triggerOcr);

@override
String toString() {
  return 'ProductSubmissionRequestModel(uuid: $uuid, upc: $upc, productType: $productType, crowdSourcedUUID: $crowdSourcedUUID, pictureRole: $pictureRole, picture: $picture, name: $name, description: $description, triggerOcr: $triggerOcr)';
}


}

/// @nodoc
abstract mixin class $ProductSubmissionRequestModelCopyWith<$Res>  {
  factory $ProductSubmissionRequestModelCopyWith(ProductSubmissionRequestModel value, $Res Function(ProductSubmissionRequestModel) _then) = _$ProductSubmissionRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uuid', includeIfNull: false) String uuid,@JsonKey(name: 'crowd_sourced_product_submission[upc]') String upc,@JsonKey(name: 'crowd_sourced_product_submission[product_type]') String productType,@JsonKey(name: 'crowd_sourced_product_submission[uuid]') String crowdSourcedUUID,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String pictureRole, String picture,@JsonKey(name: 'name', includeIfNull: false) String? name,@JsonKey(name: 'description', includeIfNull: false) String? description,@JsonKey(name: 'trigger_ocr') bool triggerOcr
});




}
/// @nodoc
class _$ProductSubmissionRequestModelCopyWithImpl<$Res>
    implements $ProductSubmissionRequestModelCopyWith<$Res> {
  _$ProductSubmissionRequestModelCopyWithImpl(this._self, this._then);

  final ProductSubmissionRequestModel _self;
  final $Res Function(ProductSubmissionRequestModel) _then;

/// Create a copy of ProductSubmissionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uuid = null,Object? upc = null,Object? productType = null,Object? crowdSourcedUUID = null,Object? pictureRole = null,Object? picture = null,Object? name = freezed,Object? description = freezed,Object? triggerOcr = null,}) {
  return _then(_self.copyWith(
uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,crowdSourcedUUID: null == crowdSourcedUUID ? _self.crowdSourcedUUID : crowdSourcedUUID // ignore: cast_nullable_to_non_nullable
as String,pictureRole: null == pictureRole ? _self.pictureRole : pictureRole // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,triggerOcr: null == triggerOcr ? _self.triggerOcr : triggerOcr // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSubmissionRequestModel].
extension ProductSubmissionRequestModelPatterns on ProductSubmissionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSubmissionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSubmissionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSubmissionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uuid', includeIfNull: false)  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[uuid]')  String crowdSourcedUUID, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String pictureRole,  String picture, @JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'description', includeIfNull: false)  String? description, @JsonKey(name: 'trigger_ocr')  bool triggerOcr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel() when $default != null:
return $default(_that.uuid,_that.upc,_that.productType,_that.crowdSourcedUUID,_that.pictureRole,_that.picture,_that.name,_that.description,_that.triggerOcr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uuid', includeIfNull: false)  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[uuid]')  String crowdSourcedUUID, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String pictureRole,  String picture, @JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'description', includeIfNull: false)  String? description, @JsonKey(name: 'trigger_ocr')  bool triggerOcr)  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel():
return $default(_that.uuid,_that.upc,_that.productType,_that.crowdSourcedUUID,_that.pictureRole,_that.picture,_that.name,_that.description,_that.triggerOcr);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uuid', includeIfNull: false)  String uuid, @JsonKey(name: 'crowd_sourced_product_submission[upc]')  String upc, @JsonKey(name: 'crowd_sourced_product_submission[product_type]')  String productType, @JsonKey(name: 'crowd_sourced_product_submission[uuid]')  String crowdSourcedUUID, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')  String pictureRole,  String picture, @JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'description', includeIfNull: false)  String? description, @JsonKey(name: 'trigger_ocr')  bool triggerOcr)?  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionRequestModel() when $default != null:
return $default(_that.uuid,_that.upc,_that.productType,_that.crowdSourcedUUID,_that.pictureRole,_that.picture,_that.name,_that.description,_that.triggerOcr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductSubmissionRequestModel implements ProductSubmissionRequestModel {
  const _ProductSubmissionRequestModel({@JsonKey(name: 'uuid', includeIfNull: false) required this.uuid, @JsonKey(name: 'crowd_sourced_product_submission[upc]') required this.upc, @JsonKey(name: 'crowd_sourced_product_submission[product_type]') required this.productType, @JsonKey(name: 'crowd_sourced_product_submission[uuid]') required this.crowdSourcedUUID, @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') required this.pictureRole, required this.picture, @JsonKey(name: 'name', includeIfNull: false) this.name, @JsonKey(name: 'description', includeIfNull: false) this.description, @JsonKey(name: 'trigger_ocr') this.triggerOcr = false});
  factory _ProductSubmissionRequestModel.fromJson(Map<String, dynamic> json) => _$ProductSubmissionRequestModelFromJson(json);

@override@JsonKey(name: 'uuid', includeIfNull: false) final  String uuid;
@override@JsonKey(name: 'crowd_sourced_product_submission[upc]') final  String upc;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_type]') final  String productType;
@override@JsonKey(name: 'crowd_sourced_product_submission[uuid]') final  String crowdSourcedUUID;
@override@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') final  String pictureRole;
@override final  String picture;
@override@JsonKey(name: 'name', includeIfNull: false) final  String? name;
@override@JsonKey(name: 'description', includeIfNull: false) final  String? description;
@override@JsonKey(name: 'trigger_ocr') final  bool triggerOcr;

/// Create a copy of ProductSubmissionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSubmissionRequestModelCopyWith<_ProductSubmissionRequestModel> get copyWith => __$ProductSubmissionRequestModelCopyWithImpl<_ProductSubmissionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductSubmissionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSubmissionRequestModel&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.upc, upc) || other.upc == upc)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.crowdSourcedUUID, crowdSourcedUUID) || other.crowdSourcedUUID == crowdSourcedUUID)&&(identical(other.pictureRole, pictureRole) || other.pictureRole == pictureRole)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.triggerOcr, triggerOcr) || other.triggerOcr == triggerOcr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,upc,productType,crowdSourcedUUID,pictureRole,picture,name,description,triggerOcr);

@override
String toString() {
  return 'ProductSubmissionRequestModel(uuid: $uuid, upc: $upc, productType: $productType, crowdSourcedUUID: $crowdSourcedUUID, pictureRole: $pictureRole, picture: $picture, name: $name, description: $description, triggerOcr: $triggerOcr)';
}


}

/// @nodoc
abstract mixin class _$ProductSubmissionRequestModelCopyWith<$Res> implements $ProductSubmissionRequestModelCopyWith<$Res> {
  factory _$ProductSubmissionRequestModelCopyWith(_ProductSubmissionRequestModel value, $Res Function(_ProductSubmissionRequestModel) _then) = __$ProductSubmissionRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uuid', includeIfNull: false) String uuid,@JsonKey(name: 'crowd_sourced_product_submission[upc]') String upc,@JsonKey(name: 'crowd_sourced_product_submission[product_type]') String productType,@JsonKey(name: 'crowd_sourced_product_submission[uuid]') String crowdSourcedUUID,@JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]') String pictureRole, String picture,@JsonKey(name: 'name', includeIfNull: false) String? name,@JsonKey(name: 'description', includeIfNull: false) String? description,@JsonKey(name: 'trigger_ocr') bool triggerOcr
});




}
/// @nodoc
class __$ProductSubmissionRequestModelCopyWithImpl<$Res>
    implements _$ProductSubmissionRequestModelCopyWith<$Res> {
  __$ProductSubmissionRequestModelCopyWithImpl(this._self, this._then);

  final _ProductSubmissionRequestModel _self;
  final $Res Function(_ProductSubmissionRequestModel) _then;

/// Create a copy of ProductSubmissionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uuid = null,Object? upc = null,Object? productType = null,Object? crowdSourcedUUID = null,Object? pictureRole = null,Object? picture = null,Object? name = freezed,Object? description = freezed,Object? triggerOcr = null,}) {
  return _then(_ProductSubmissionRequestModel(
uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,upc: null == upc ? _self.upc : upc // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,crowdSourcedUUID: null == crowdSourcedUUID ? _self.crowdSourcedUUID : crowdSourcedUUID // ignore: cast_nullable_to_non_nullable
as String,pictureRole: null == pictureRole ? _self.pictureRole : pictureRole // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,triggerOcr: null == triggerOcr ? _self.triggerOcr : triggerOcr // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
