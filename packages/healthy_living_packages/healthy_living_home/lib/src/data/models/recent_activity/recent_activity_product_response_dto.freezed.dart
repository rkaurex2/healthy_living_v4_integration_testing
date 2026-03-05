// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_activity_product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentActivityProductResponseDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'brand_id') int? get brandId;@JsonKey(name: 'company_name') String? get companyName; String? get name; dynamic get upcs;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'browse_image_url') String? get browseImageUrl;@JsonKey(name: 'medium_image_url') String? get mediumImageUrl;@JsonKey(name: 'mobile_image_url') String? get mobileImageUrl; String? get score;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'verified_date') String? get verifiedDate;@JsonKey(name: 'web_url') String? get webUrl;
/// Create a copy of RecentActivityProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentActivityProductResponseDTOCopyWith<RecentActivityProductResponseDTO> get copyWith => _$RecentActivityProductResponseDTOCopyWithImpl<RecentActivityProductResponseDTO>(this as RecentActivityProductResponseDTO, _$identity);

  /// Serializes this RecentActivityProductResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,brandId,companyName,name,const DeepCollectionEquality().hash(upcs),imageUrl,browseImageUrl,mediumImageUrl,mobileImageUrl,score,ewgVerified,verifiedDate,webUrl);

@override
String toString() {
  return 'RecentActivityProductResponseDTO(productType: $productType, productId: $productId, brandName: $brandName, brandId: $brandId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, mobileImageUrl: $mobileImageUrl, score: $score, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, webUrl: $webUrl)';
}


}

/// @nodoc
abstract mixin class $RecentActivityProductResponseDTOCopyWith<$Res>  {
  factory $RecentActivityProductResponseDTOCopyWith(RecentActivityProductResponseDTO value, $Res Function(RecentActivityProductResponseDTO) _then) = _$RecentActivityProductResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'company_name') String? companyName, String? name, dynamic upcs,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'mobile_image_url') String? mobileImageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate,@JsonKey(name: 'web_url') String? webUrl
});




}
/// @nodoc
class _$RecentActivityProductResponseDTOCopyWithImpl<$Res>
    implements $RecentActivityProductResponseDTOCopyWith<$Res> {
  _$RecentActivityProductResponseDTOCopyWithImpl(this._self, this._then);

  final RecentActivityProductResponseDTO _self;
  final $Res Function(RecentActivityProductResponseDTO) _then;

/// Create a copy of RecentActivityProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? mobileImageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? webUrl = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as dynamic,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mobileImageUrl: freezed == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentActivityProductResponseDTO].
extension RecentActivityProductResponseDTOPatterns on RecentActivityProductResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentActivityProductResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentActivityProductResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentActivityProductResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate, @JsonKey(name: 'web_url')  String? webUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.mobileImageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.webUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate, @JsonKey(name: 'web_url')  String? webUrl)  $default,) {final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO():
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.mobileImageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.webUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate, @JsonKey(name: 'web_url')  String? webUrl)?  $default,) {final _that = this;
switch (_that) {
case _RecentActivityProductResponseDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.mobileImageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.webUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentActivityProductResponseDTO implements RecentActivityProductResponseDTO {
  const _RecentActivityProductResponseDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'company_name') this.companyName, this.name, this.upcs, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'browse_image_url') this.browseImageUrl, @JsonKey(name: 'medium_image_url') this.mediumImageUrl, @JsonKey(name: 'mobile_image_url') this.mobileImageUrl, this.score, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'verified_date') this.verifiedDate, @JsonKey(name: 'web_url') this.webUrl});
  factory _RecentActivityProductResponseDTO.fromJson(Map<String, dynamic> json) => _$RecentActivityProductResponseDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'brand_id') final  int? brandId;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  String? name;
@override final  dynamic upcs;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'browse_image_url') final  String? browseImageUrl;
@override@JsonKey(name: 'medium_image_url') final  String? mediumImageUrl;
@override@JsonKey(name: 'mobile_image_url') final  String? mobileImageUrl;
@override final  String? score;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'verified_date') final  String? verifiedDate;
@override@JsonKey(name: 'web_url') final  String? webUrl;

/// Create a copy of RecentActivityProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentActivityProductResponseDTOCopyWith<_RecentActivityProductResponseDTO> get copyWith => __$RecentActivityProductResponseDTOCopyWithImpl<_RecentActivityProductResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentActivityProductResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentActivityProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,brandId,companyName,name,const DeepCollectionEquality().hash(upcs),imageUrl,browseImageUrl,mediumImageUrl,mobileImageUrl,score,ewgVerified,verifiedDate,webUrl);

@override
String toString() {
  return 'RecentActivityProductResponseDTO(productType: $productType, productId: $productId, brandName: $brandName, brandId: $brandId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, mobileImageUrl: $mobileImageUrl, score: $score, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, webUrl: $webUrl)';
}


}

/// @nodoc
abstract mixin class _$RecentActivityProductResponseDTOCopyWith<$Res> implements $RecentActivityProductResponseDTOCopyWith<$Res> {
  factory _$RecentActivityProductResponseDTOCopyWith(_RecentActivityProductResponseDTO value, $Res Function(_RecentActivityProductResponseDTO) _then) = __$RecentActivityProductResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'company_name') String? companyName, String? name, dynamic upcs,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'mobile_image_url') String? mobileImageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate,@JsonKey(name: 'web_url') String? webUrl
});




}
/// @nodoc
class __$RecentActivityProductResponseDTOCopyWithImpl<$Res>
    implements _$RecentActivityProductResponseDTOCopyWith<$Res> {
  __$RecentActivityProductResponseDTOCopyWithImpl(this._self, this._then);

  final _RecentActivityProductResponseDTO _self;
  final $Res Function(_RecentActivityProductResponseDTO) _then;

/// Create a copy of RecentActivityProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? mobileImageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? webUrl = freezed,}) {
  return _then(_RecentActivityProductResponseDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as dynamic,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mobileImageUrl: freezed == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
