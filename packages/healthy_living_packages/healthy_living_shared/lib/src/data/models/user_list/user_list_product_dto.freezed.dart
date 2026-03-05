// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListProductDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'brand_id') int? get brandId;@JsonKey(name: 'company_name') String? get companyName; String? get name; dynamic get upcs;@JsonKey(name: 'image_url') String? get imageUrl; String? get score;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'skindeep_id') int? get skinDeepId;@JsonKey(name: 'verified_date') String? get verifiedDate; List<dynamic>? get retailers;@JsonKey(name: 'web_url') String? get webUrl; int? get id;@JsonKey(name: 'to_param') String? get toParam;@JsonKey(name: 'brand_line_id') int? get brandLineId; String? get grade;@JsonKey(name: 'search_grade') String? get searchGrade; bool? get discontinued;@JsonKey(name: 'browse_image_url') String? get browseImageUrl;@JsonKey(name: 'medium_image_url') String? get mediumImageUrl;@JsonKey(name: 'number_of_formulations') int? get numberOfFormulations;@JsonKey(name: 'green_certified') bool? get greenCertified; UserListBusinessDTO? get business;@JsonKey(name: 'name_correction_submitted') bool? get nameCorrectionSubmitted; String? get postdate;@JsonKey(name: 'product_size') String? get productSize;@JsonKey(name: 'image_source') String? get imageSource;@JsonKey(name: 'asin_list') String? get asinList; UserListScoresDTO? get scores;@JsonKey(name: 'category_display_name') String? get categoryDisplayName;@JsonKey(name: 'category_link_name') String? get categoryLinkName;@JsonKey(name: 'category_groups') List<String>? get categoryGroups; List<dynamic>? get attributes; List<dynamic>? get certifications;@JsonKey(name: 'company_communications') List<dynamic>? get companyCommunications;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListProductDTOCopyWith<UserListProductDTO> get copyWith => _$UserListProductDTOCopyWithImpl<UserListProductDTO>(this as UserListProductDTO, _$identity);

  /// Serializes this UserListProductDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.toParam, toParam) || other.toParam == toParam)&&(identical(other.brandLineId, brandLineId) || other.brandLineId == brandLineId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.searchGrade, searchGrade) || other.searchGrade == searchGrade)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.numberOfFormulations, numberOfFormulations) || other.numberOfFormulations == numberOfFormulations)&&(identical(other.greenCertified, greenCertified) || other.greenCertified == greenCertified)&&(identical(other.business, business) || other.business == business)&&(identical(other.nameCorrectionSubmitted, nameCorrectionSubmitted) || other.nameCorrectionSubmitted == nameCorrectionSubmitted)&&(identical(other.postdate, postdate) || other.postdate == postdate)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.asinList, asinList) || other.asinList == asinList)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other.categoryGroups, categoryGroups)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&const DeepCollectionEquality().equals(other.companyCommunications, companyCommunications)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,brandName,brandId,companyName,name,const DeepCollectionEquality().hash(upcs),imageUrl,score,ewgVerified,skinDeepId,verifiedDate,const DeepCollectionEquality().hash(retailers),webUrl,id,toParam,brandLineId,grade,searchGrade,discontinued,browseImageUrl,mediumImageUrl,numberOfFormulations,greenCertified,business,nameCorrectionSubmitted,postdate,productSize,imageSource,asinList,scores,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(categoryGroups),const DeepCollectionEquality().hash(attributes),const DeepCollectionEquality().hash(certifications),const DeepCollectionEquality().hash(companyCommunications),ingredientPreferenceIndicator]);

@override
String toString() {
  return 'UserListProductDTO(productType: $productType, productId: $productId, brandName: $brandName, brandId: $brandId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, skinDeepId: $skinDeepId, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, id: $id, toParam: $toParam, brandLineId: $brandLineId, grade: $grade, searchGrade: $searchGrade, discontinued: $discontinued, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, numberOfFormulations: $numberOfFormulations, greenCertified: $greenCertified, business: $business, nameCorrectionSubmitted: $nameCorrectionSubmitted, postdate: $postdate, productSize: $productSize, imageSource: $imageSource, asinList: $asinList, scores: $scores, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, attributes: $attributes, certifications: $certifications, companyCommunications: $companyCommunications, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $UserListProductDTOCopyWith<$Res>  {
  factory $UserListProductDTOCopyWith(UserListProductDTO value, $Res Function(UserListProductDTO) _then) = _$UserListProductDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'company_name') String? companyName, String? name, dynamic upcs,@JsonKey(name: 'image_url') String? imageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'skindeep_id') int? skinDeepId,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl, int? id,@JsonKey(name: 'to_param') String? toParam,@JsonKey(name: 'brand_line_id') int? brandLineId, String? grade,@JsonKey(name: 'search_grade') String? searchGrade, bool? discontinued,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'number_of_formulations') int? numberOfFormulations,@JsonKey(name: 'green_certified') bool? greenCertified, UserListBusinessDTO? business,@JsonKey(name: 'name_correction_submitted') bool? nameCorrectionSubmitted, String? postdate,@JsonKey(name: 'product_size') String? productSize,@JsonKey(name: 'image_source') String? imageSource,@JsonKey(name: 'asin_list') String? asinList, UserListScoresDTO? scores,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups, List<dynamic>? attributes, List<dynamic>? certifications,@JsonKey(name: 'company_communications') List<dynamic>? companyCommunications,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$UserListBusinessDTOCopyWith<$Res>? get business;$UserListScoresDTOCopyWith<$Res>? get scores;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$UserListProductDTOCopyWithImpl<$Res>
    implements $UserListProductDTOCopyWith<$Res> {
  _$UserListProductDTOCopyWithImpl(this._self, this._then);

  final UserListProductDTO _self;
  final $Res Function(UserListProductDTO) _then;

/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? skinDeepId = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? id = freezed,Object? toParam = freezed,Object? brandLineId = freezed,Object? grade = freezed,Object? searchGrade = freezed,Object? discontinued = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? numberOfFormulations = freezed,Object? greenCertified = freezed,Object? business = freezed,Object? nameCorrectionSubmitted = freezed,Object? postdate = freezed,Object? productSize = freezed,Object? imageSource = freezed,Object? asinList = freezed,Object? scores = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? attributes = freezed,Object? certifications = freezed,Object? companyCommunications = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as dynamic,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,toParam: freezed == toParam ? _self.toParam : toParam // ignore: cast_nullable_to_non_nullable
as String?,brandLineId: freezed == brandLineId ? _self.brandLineId : brandLineId // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,searchGrade: freezed == searchGrade ? _self.searchGrade : searchGrade // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,numberOfFormulations: freezed == numberOfFormulations ? _self.numberOfFormulations : numberOfFormulations // ignore: cast_nullable_to_non_nullable
as int?,greenCertified: freezed == greenCertified ? _self.greenCertified : greenCertified // ignore: cast_nullable_to_non_nullable
as bool?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as UserListBusinessDTO?,nameCorrectionSubmitted: freezed == nameCorrectionSubmitted ? _self.nameCorrectionSubmitted : nameCorrectionSubmitted // ignore: cast_nullable_to_non_nullable
as bool?,postdate: freezed == postdate ? _self.postdate : postdate // ignore: cast_nullable_to_non_nullable
as String?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as String?,asinList: freezed == asinList ? _self.asinList : asinList // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as UserListScoresDTO?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self.categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,companyCommunications: freezed == companyCommunications ? _self.companyCommunications : companyCommunications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListBusinessDTOCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $UserListBusinessDTOCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $UserListScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserListProductDTO].
extension UserListProductDTOPatterns on UserListProductDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListProductDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListProductDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListProductDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserListProductDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListProductDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserListProductDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'skindeep_id')  int? skinDeepId, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl,  int? id, @JsonKey(name: 'to_param')  String? toParam, @JsonKey(name: 'brand_line_id')  int? brandLineId,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  UserListBusinessDTO? business, @JsonKey(name: 'name_correction_submitted')  bool? nameCorrectionSubmitted,  String? postdate, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_source')  String? imageSource, @JsonKey(name: 'asin_list')  String? asinList,  UserListScoresDTO? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups,  List<dynamic>? attributes,  List<dynamic>? certifications, @JsonKey(name: 'company_communications')  List<dynamic>? companyCommunications, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListProductDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.skinDeepId,_that.verifiedDate,_that.retailers,_that.webUrl,_that.id,_that.toParam,_that.brandLineId,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.nameCorrectionSubmitted,_that.postdate,_that.productSize,_that.imageSource,_that.asinList,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.attributes,_that.certifications,_that.companyCommunications,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'skindeep_id')  int? skinDeepId, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl,  int? id, @JsonKey(name: 'to_param')  String? toParam, @JsonKey(name: 'brand_line_id')  int? brandLineId,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  UserListBusinessDTO? business, @JsonKey(name: 'name_correction_submitted')  bool? nameCorrectionSubmitted,  String? postdate, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_source')  String? imageSource, @JsonKey(name: 'asin_list')  String? asinList,  UserListScoresDTO? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups,  List<dynamic>? attributes,  List<dynamic>? certifications, @JsonKey(name: 'company_communications')  List<dynamic>? companyCommunications, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _UserListProductDTO():
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.skinDeepId,_that.verifiedDate,_that.retailers,_that.webUrl,_that.id,_that.toParam,_that.brandLineId,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.nameCorrectionSubmitted,_that.postdate,_that.productSize,_that.imageSource,_that.asinList,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.attributes,_that.certifications,_that.companyCommunications,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  dynamic upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'skindeep_id')  int? skinDeepId, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl,  int? id, @JsonKey(name: 'to_param')  String? toParam, @JsonKey(name: 'brand_line_id')  int? brandLineId,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  UserListBusinessDTO? business, @JsonKey(name: 'name_correction_submitted')  bool? nameCorrectionSubmitted,  String? postdate, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_source')  String? imageSource, @JsonKey(name: 'asin_list')  String? asinList,  UserListScoresDTO? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups,  List<dynamic>? attributes,  List<dynamic>? certifications, @JsonKey(name: 'company_communications')  List<dynamic>? companyCommunications, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _UserListProductDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.brandId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.skinDeepId,_that.verifiedDate,_that.retailers,_that.webUrl,_that.id,_that.toParam,_that.brandLineId,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.nameCorrectionSubmitted,_that.postdate,_that.productSize,_that.imageSource,_that.asinList,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.attributes,_that.certifications,_that.companyCommunications,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListProductDTO implements UserListProductDTO {
  const _UserListProductDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'company_name') this.companyName, this.name, this.upcs, @JsonKey(name: 'image_url') this.imageUrl, this.score, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'skindeep_id') this.skinDeepId, @JsonKey(name: 'verified_date') this.verifiedDate, final  List<dynamic>? retailers, @JsonKey(name: 'web_url') this.webUrl, this.id, @JsonKey(name: 'to_param') this.toParam, @JsonKey(name: 'brand_line_id') this.brandLineId, this.grade, @JsonKey(name: 'search_grade') this.searchGrade, this.discontinued, @JsonKey(name: 'browse_image_url') this.browseImageUrl, @JsonKey(name: 'medium_image_url') this.mediumImageUrl, @JsonKey(name: 'number_of_formulations') this.numberOfFormulations, @JsonKey(name: 'green_certified') this.greenCertified, this.business, @JsonKey(name: 'name_correction_submitted') this.nameCorrectionSubmitted, this.postdate, @JsonKey(name: 'product_size') this.productSize, @JsonKey(name: 'image_source') this.imageSource, @JsonKey(name: 'asin_list') this.asinList, this.scores, @JsonKey(name: 'category_display_name') this.categoryDisplayName, @JsonKey(name: 'category_link_name') this.categoryLinkName, @JsonKey(name: 'category_groups') final  List<String>? categoryGroups, final  List<dynamic>? attributes, final  List<dynamic>? certifications, @JsonKey(name: 'company_communications') final  List<dynamic>? companyCommunications, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator}): _retailers = retailers,_categoryGroups = categoryGroups,_attributes = attributes,_certifications = certifications,_companyCommunications = companyCommunications;
  factory _UserListProductDTO.fromJson(Map<String, dynamic> json) => _$UserListProductDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'brand_id') final  int? brandId;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  String? name;
@override final  dynamic upcs;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  String? score;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'skindeep_id') final  int? skinDeepId;
@override@JsonKey(name: 'verified_date') final  String? verifiedDate;
 final  List<dynamic>? _retailers;
@override List<dynamic>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'web_url') final  String? webUrl;
@override final  int? id;
@override@JsonKey(name: 'to_param') final  String? toParam;
@override@JsonKey(name: 'brand_line_id') final  int? brandLineId;
@override final  String? grade;
@override@JsonKey(name: 'search_grade') final  String? searchGrade;
@override final  bool? discontinued;
@override@JsonKey(name: 'browse_image_url') final  String? browseImageUrl;
@override@JsonKey(name: 'medium_image_url') final  String? mediumImageUrl;
@override@JsonKey(name: 'number_of_formulations') final  int? numberOfFormulations;
@override@JsonKey(name: 'green_certified') final  bool? greenCertified;
@override final  UserListBusinessDTO? business;
@override@JsonKey(name: 'name_correction_submitted') final  bool? nameCorrectionSubmitted;
@override final  String? postdate;
@override@JsonKey(name: 'product_size') final  String? productSize;
@override@JsonKey(name: 'image_source') final  String? imageSource;
@override@JsonKey(name: 'asin_list') final  String? asinList;
@override final  UserListScoresDTO? scores;
@override@JsonKey(name: 'category_display_name') final  String? categoryDisplayName;
@override@JsonKey(name: 'category_link_name') final  String? categoryLinkName;
 final  List<String>? _categoryGroups;
@override@JsonKey(name: 'category_groups') List<String>? get categoryGroups {
  final value = _categoryGroups;
  if (value == null) return null;
  if (_categoryGroups is EqualUnmodifiableListView) return _categoryGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _attributes;
@override List<dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _certifications;
@override List<dynamic>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _companyCommunications;
@override@JsonKey(name: 'company_communications') List<dynamic>? get companyCommunications {
  final value = _companyCommunications;
  if (value == null) return null;
  if (_companyCommunications is EqualUnmodifiableListView) return _companyCommunications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'ingredient_preferences') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListProductDTOCopyWith<_UserListProductDTO> get copyWith => __$UserListProductDTOCopyWithImpl<_UserListProductDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListProductDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.toParam, toParam) || other.toParam == toParam)&&(identical(other.brandLineId, brandLineId) || other.brandLineId == brandLineId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.searchGrade, searchGrade) || other.searchGrade == searchGrade)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.numberOfFormulations, numberOfFormulations) || other.numberOfFormulations == numberOfFormulations)&&(identical(other.greenCertified, greenCertified) || other.greenCertified == greenCertified)&&(identical(other.business, business) || other.business == business)&&(identical(other.nameCorrectionSubmitted, nameCorrectionSubmitted) || other.nameCorrectionSubmitted == nameCorrectionSubmitted)&&(identical(other.postdate, postdate) || other.postdate == postdate)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.asinList, asinList) || other.asinList == asinList)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other._categoryGroups, _categoryGroups)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&const DeepCollectionEquality().equals(other._companyCommunications, _companyCommunications)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,brandName,brandId,companyName,name,const DeepCollectionEquality().hash(upcs),imageUrl,score,ewgVerified,skinDeepId,verifiedDate,const DeepCollectionEquality().hash(_retailers),webUrl,id,toParam,brandLineId,grade,searchGrade,discontinued,browseImageUrl,mediumImageUrl,numberOfFormulations,greenCertified,business,nameCorrectionSubmitted,postdate,productSize,imageSource,asinList,scores,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(_categoryGroups),const DeepCollectionEquality().hash(_attributes),const DeepCollectionEquality().hash(_certifications),const DeepCollectionEquality().hash(_companyCommunications),ingredientPreferenceIndicator]);

@override
String toString() {
  return 'UserListProductDTO(productType: $productType, productId: $productId, brandName: $brandName, brandId: $brandId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, skinDeepId: $skinDeepId, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, id: $id, toParam: $toParam, brandLineId: $brandLineId, grade: $grade, searchGrade: $searchGrade, discontinued: $discontinued, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, numberOfFormulations: $numberOfFormulations, greenCertified: $greenCertified, business: $business, nameCorrectionSubmitted: $nameCorrectionSubmitted, postdate: $postdate, productSize: $productSize, imageSource: $imageSource, asinList: $asinList, scores: $scores, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, attributes: $attributes, certifications: $certifications, companyCommunications: $companyCommunications, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$UserListProductDTOCopyWith<$Res> implements $UserListProductDTOCopyWith<$Res> {
  factory _$UserListProductDTOCopyWith(_UserListProductDTO value, $Res Function(_UserListProductDTO) _then) = __$UserListProductDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'company_name') String? companyName, String? name, dynamic upcs,@JsonKey(name: 'image_url') String? imageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'skindeep_id') int? skinDeepId,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl, int? id,@JsonKey(name: 'to_param') String? toParam,@JsonKey(name: 'brand_line_id') int? brandLineId, String? grade,@JsonKey(name: 'search_grade') String? searchGrade, bool? discontinued,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'number_of_formulations') int? numberOfFormulations,@JsonKey(name: 'green_certified') bool? greenCertified, UserListBusinessDTO? business,@JsonKey(name: 'name_correction_submitted') bool? nameCorrectionSubmitted, String? postdate,@JsonKey(name: 'product_size') String? productSize,@JsonKey(name: 'image_source') String? imageSource,@JsonKey(name: 'asin_list') String? asinList, UserListScoresDTO? scores,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups, List<dynamic>? attributes, List<dynamic>? certifications,@JsonKey(name: 'company_communications') List<dynamic>? companyCommunications,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $UserListBusinessDTOCopyWith<$Res>? get business;@override $UserListScoresDTOCopyWith<$Res>? get scores;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$UserListProductDTOCopyWithImpl<$Res>
    implements _$UserListProductDTOCopyWith<$Res> {
  __$UserListProductDTOCopyWithImpl(this._self, this._then);

  final _UserListProductDTO _self;
  final $Res Function(_UserListProductDTO) _then;

/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? skinDeepId = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? id = freezed,Object? toParam = freezed,Object? brandLineId = freezed,Object? grade = freezed,Object? searchGrade = freezed,Object? discontinued = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? numberOfFormulations = freezed,Object? greenCertified = freezed,Object? business = freezed,Object? nameCorrectionSubmitted = freezed,Object? postdate = freezed,Object? productSize = freezed,Object? imageSource = freezed,Object? asinList = freezed,Object? scores = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? attributes = freezed,Object? certifications = freezed,Object? companyCommunications = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_UserListProductDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as dynamic,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,toParam: freezed == toParam ? _self.toParam : toParam // ignore: cast_nullable_to_non_nullable
as String?,brandLineId: freezed == brandLineId ? _self.brandLineId : brandLineId // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,searchGrade: freezed == searchGrade ? _self.searchGrade : searchGrade // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,numberOfFormulations: freezed == numberOfFormulations ? _self.numberOfFormulations : numberOfFormulations // ignore: cast_nullable_to_non_nullable
as int?,greenCertified: freezed == greenCertified ? _self.greenCertified : greenCertified // ignore: cast_nullable_to_non_nullable
as bool?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as UserListBusinessDTO?,nameCorrectionSubmitted: freezed == nameCorrectionSubmitted ? _self.nameCorrectionSubmitted : nameCorrectionSubmitted // ignore: cast_nullable_to_non_nullable
as bool?,postdate: freezed == postdate ? _self.postdate : postdate // ignore: cast_nullable_to_non_nullable
as String?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as String?,asinList: freezed == asinList ? _self.asinList : asinList // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as UserListScoresDTO?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self._categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,companyCommunications: freezed == companyCommunications ? _self._companyCommunications : companyCommunications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListBusinessDTOCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $UserListBusinessDTOCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $UserListScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of UserListProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}

// dart format on
