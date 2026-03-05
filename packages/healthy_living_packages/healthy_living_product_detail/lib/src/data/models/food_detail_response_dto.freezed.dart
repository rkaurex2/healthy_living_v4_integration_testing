// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailResponseDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'product_size') String? get productSize; List<String>? get upcs; String? get name;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'category_display_name') String? get categoryDisplayName;@JsonKey(name: 'category_link_name') String? get categoryLinkName;@JsonKey(name: 'category_groups') List<String>? get categoryGroups;@JsonKey(name: 'web_url') String? get webUrl; bool? get discontinued; FoodDetailScoresDTO? get scores;@JsonKey(name: 'page_details') List<FoodDetailPageDetailsDTO>? get findings;@JsonKey(name: 'added_sugar_ingredients') String? get addedSugarIngredients;@JsonKey(name: 'image_url') String? get imageUrl; String? get asin;@JsonKey(name: 'label_ingredients') String? get labelIngredients;@JsonKey(name: 'avoid_facts') List<FoodDetailNutrientFactDTO>? get avoidFacts; FoodDetailNutrientFactDTO? get calories;@JsonKey(name: 'serving_info') FoodDetailServingInfoDTO? get servingInfo;@JsonKey(name: 'quick_facts') List<FoodDetailNutrientFactDTO>? get quickFacts; List<FoodDetailNutrientFactDTO>? get nutrients;@JsonKey(name: "last_updated") String? get lastUpdated;@JsonKey(name: 'label_warnings') String? get labelWarning;@JsonKey(name: 'label_directions') String? get labelDirection; List<CertificationsDTO>? get certifications;@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;@JsonKey(name: 'retailers', defaultValue: []) List<RetailerDTO>? get retailers;
/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailResponseDTOCopyWith<FoodDetailResponseDTO> get copyWith => _$FoodDetailResponseDTOCopyWithImpl<FoodDetailResponseDTO>(this as FoodDetailResponseDTO, _$identity);

  /// Serializes this FoodDetailResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other.categoryGroups, categoryGroups)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other.findings, findings)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&const DeepCollectionEquality().equals(other.avoidFacts, avoidFacts)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.servingInfo, servingInfo) || other.servingInfo == servingInfo)&&const DeepCollectionEquality().equals(other.quickFacts, quickFacts)&&const DeepCollectionEquality().equals(other.nutrients, nutrients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&const DeepCollectionEquality().equals(other.retailers, retailers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,productSize,const DeepCollectionEquality().hash(upcs),name,brandName,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(categoryGroups),webUrl,discontinued,scores,const DeepCollectionEquality().hash(findings),addedSugarIngredients,imageUrl,asin,labelIngredients,const DeepCollectionEquality().hash(avoidFacts),calories,servingInfo,const DeepCollectionEquality().hash(quickFacts),const DeepCollectionEquality().hash(nutrients),lastUpdated,labelWarning,labelDirection,const DeepCollectionEquality().hash(certifications),ingredientPreferenceIndicator,const DeepCollectionEquality().hash(retailers)]);

@override
String toString() {
  return 'FoodDetailResponseDTO(productType: $productType, productId: $productId, productSize: $productSize, upcs: $upcs, name: $name, brandName: $brandName, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, scores: $scores, findings: $findings, addedSugarIngredients: $addedSugarIngredients, imageUrl: $imageUrl, asin: $asin, labelIngredients: $labelIngredients, avoidFacts: $avoidFacts, calories: $calories, servingInfo: $servingInfo, quickFacts: $quickFacts, nutrients: $nutrients, lastUpdated: $lastUpdated, labelWarning: $labelWarning, labelDirection: $labelDirection, certifications: $certifications, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, retailers: $retailers)';
}


}

/// @nodoc
abstract mixin class $FoodDetailResponseDTOCopyWith<$Res>  {
  factory $FoodDetailResponseDTOCopyWith(FoodDetailResponseDTO value, $Res Function(FoodDetailResponseDTO) _then) = _$FoodDetailResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_size') String? productSize, List<String>? upcs, String? name,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups,@JsonKey(name: 'web_url') String? webUrl, bool? discontinued, FoodDetailScoresDTO? scores,@JsonKey(name: 'page_details') List<FoodDetailPageDetailsDTO>? findings,@JsonKey(name: 'added_sugar_ingredients') String? addedSugarIngredients,@JsonKey(name: 'image_url') String? imageUrl, String? asin,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'avoid_facts') List<FoodDetailNutrientFactDTO>? avoidFacts, FoodDetailNutrientFactDTO? calories,@JsonKey(name: 'serving_info') FoodDetailServingInfoDTO? servingInfo,@JsonKey(name: 'quick_facts') List<FoodDetailNutrientFactDTO>? quickFacts, List<FoodDetailNutrientFactDTO>? nutrients,@JsonKey(name: "last_updated") String? lastUpdated,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection, List<CertificationsDTO>? certifications,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,@JsonKey(name: 'retailers', defaultValue: []) List<RetailerDTO>? retailers
});


$FoodDetailScoresDTOCopyWith<$Res>? get scores;$FoodDetailNutrientFactDTOCopyWith<$Res>? get calories;$FoodDetailServingInfoDTOCopyWith<$Res>? get servingInfo;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$FoodDetailResponseDTOCopyWithImpl<$Res>
    implements $FoodDetailResponseDTOCopyWith<$Res> {
  _$FoodDetailResponseDTOCopyWithImpl(this._self, this._then);

  final FoodDetailResponseDTO _self;
  final $Res Function(FoodDetailResponseDTO) _then;

/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? productSize = freezed,Object? upcs = freezed,Object? name = freezed,Object? brandName = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? scores = freezed,Object? findings = freezed,Object? addedSugarIngredients = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? labelIngredients = freezed,Object? avoidFacts = freezed,Object? calories = freezed,Object? servingInfo = freezed,Object? quickFacts = freezed,Object? nutrients = freezed,Object? lastUpdated = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? certifications = freezed,Object? ingredientPreferenceIndicator = freezed,Object? retailers = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self.categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as FoodDetailScoresDTO?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as List<FoodDetailPageDetailsDTO>?,addedSugarIngredients: freezed == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,avoidFacts: freezed == avoidFacts ? _self.avoidFacts : avoidFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as FoodDetailNutrientFactDTO?,servingInfo: freezed == servingInfo ? _self.servingInfo : servingInfo // ignore: cast_nullable_to_non_nullable
as FoodDetailServingInfoDTO?,quickFacts: freezed == quickFacts ? _self.quickFacts : quickFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,
  ));
}
/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $FoodDetailScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailNutrientFactDTOCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $FoodDetailNutrientFactDTOCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailServingInfoDTOCopyWith<$Res>? get servingInfo {
    if (_self.servingInfo == null) {
    return null;
  }

  return $FoodDetailServingInfoDTOCopyWith<$Res>(_self.servingInfo!, (value) {
    return _then(_self.copyWith(servingInfo: value));
  });
}/// Create a copy of FoodDetailResponseDTO
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


/// Adds pattern-matching-related methods to [FoodDetailResponseDTO].
extension FoodDetailResponseDTOPatterns on FoodDetailResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize,  List<String>? upcs,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued,  FoodDetailScoresDTO? scores, @JsonKey(name: 'page_details')  List<FoodDetailPageDetailsDTO>? findings, @JsonKey(name: 'added_sugar_ingredients')  String? addedSugarIngredients, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'avoid_facts')  List<FoodDetailNutrientFactDTO>? avoidFacts,  FoodDetailNutrientFactDTO? calories, @JsonKey(name: 'serving_info')  FoodDetailServingInfoDTO? servingInfo, @JsonKey(name: 'quick_facts')  List<FoodDetailNutrientFactDTO>? quickFacts,  List<FoodDetailNutrientFactDTO>? nutrients, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  List<CertificationsDTO>? certifications, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerDTO>? retailers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceIndicator,_that.retailers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize,  List<String>? upcs,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued,  FoodDetailScoresDTO? scores, @JsonKey(name: 'page_details')  List<FoodDetailPageDetailsDTO>? findings, @JsonKey(name: 'added_sugar_ingredients')  String? addedSugarIngredients, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'avoid_facts')  List<FoodDetailNutrientFactDTO>? avoidFacts,  FoodDetailNutrientFactDTO? calories, @JsonKey(name: 'serving_info')  FoodDetailServingInfoDTO? servingInfo, @JsonKey(name: 'quick_facts')  List<FoodDetailNutrientFactDTO>? quickFacts,  List<FoodDetailNutrientFactDTO>? nutrients, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  List<CertificationsDTO>? certifications, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerDTO>? retailers)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO():
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceIndicator,_that.retailers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize,  List<String>? upcs,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued,  FoodDetailScoresDTO? scores, @JsonKey(name: 'page_details')  List<FoodDetailPageDetailsDTO>? findings, @JsonKey(name: 'added_sugar_ingredients')  String? addedSugarIngredients, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'avoid_facts')  List<FoodDetailNutrientFactDTO>? avoidFacts,  FoodDetailNutrientFactDTO? calories, @JsonKey(name: 'serving_info')  FoodDetailServingInfoDTO? servingInfo, @JsonKey(name: 'quick_facts')  List<FoodDetailNutrientFactDTO>? quickFacts,  List<FoodDetailNutrientFactDTO>? nutrients, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  List<CertificationsDTO>? certifications, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerDTO>? retailers)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceIndicator,_that.retailers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailResponseDTO implements FoodDetailResponseDTO {
  const _FoodDetailResponseDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'product_size') this.productSize, final  List<String>? upcs, this.name, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'category_display_name') this.categoryDisplayName, @JsonKey(name: 'category_link_name') this.categoryLinkName, @JsonKey(name: 'category_groups') final  List<String>? categoryGroups, @JsonKey(name: 'web_url') this.webUrl, this.discontinued, this.scores, @JsonKey(name: 'page_details') final  List<FoodDetailPageDetailsDTO>? findings, @JsonKey(name: 'added_sugar_ingredients') this.addedSugarIngredients, @JsonKey(name: 'image_url') this.imageUrl, this.asin, @JsonKey(name: 'label_ingredients') this.labelIngredients, @JsonKey(name: 'avoid_facts') final  List<FoodDetailNutrientFactDTO>? avoidFacts, this.calories, @JsonKey(name: 'serving_info') this.servingInfo, @JsonKey(name: 'quick_facts') final  List<FoodDetailNutrientFactDTO>? quickFacts, final  List<FoodDetailNutrientFactDTO>? nutrients, @JsonKey(name: "last_updated") this.lastUpdated, @JsonKey(name: 'label_warnings') this.labelWarning, @JsonKey(name: 'label_directions') this.labelDirection, final  List<CertificationsDTO>? certifications, @JsonKey(name: 'ingredient_preference_labels') this.ingredientPreferenceIndicator, @JsonKey(name: 'retailers', defaultValue: []) final  List<RetailerDTO>? retailers}): _upcs = upcs,_categoryGroups = categoryGroups,_findings = findings,_avoidFacts = avoidFacts,_quickFacts = quickFacts,_nutrients = nutrients,_certifications = certifications,_retailers = retailers;
  factory _FoodDetailResponseDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailResponseDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'product_size') final  String? productSize;
 final  List<String>? _upcs;
@override List<String>? get upcs {
  final value = _upcs;
  if (value == null) return null;
  if (_upcs is EqualUnmodifiableListView) return _upcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? name;
@override@JsonKey(name: 'brand_name') final  String? brandName;
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

@override@JsonKey(name: 'web_url') final  String? webUrl;
@override final  bool? discontinued;
@override final  FoodDetailScoresDTO? scores;
 final  List<FoodDetailPageDetailsDTO>? _findings;
@override@JsonKey(name: 'page_details') List<FoodDetailPageDetailsDTO>? get findings {
  final value = _findings;
  if (value == null) return null;
  if (_findings is EqualUnmodifiableListView) return _findings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'added_sugar_ingredients') final  String? addedSugarIngredients;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  String? asin;
@override@JsonKey(name: 'label_ingredients') final  String? labelIngredients;
 final  List<FoodDetailNutrientFactDTO>? _avoidFacts;
@override@JsonKey(name: 'avoid_facts') List<FoodDetailNutrientFactDTO>? get avoidFacts {
  final value = _avoidFacts;
  if (value == null) return null;
  if (_avoidFacts is EqualUnmodifiableListView) return _avoidFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FoodDetailNutrientFactDTO? calories;
@override@JsonKey(name: 'serving_info') final  FoodDetailServingInfoDTO? servingInfo;
 final  List<FoodDetailNutrientFactDTO>? _quickFacts;
@override@JsonKey(name: 'quick_facts') List<FoodDetailNutrientFactDTO>? get quickFacts {
  final value = _quickFacts;
  if (value == null) return null;
  if (_quickFacts is EqualUnmodifiableListView) return _quickFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FoodDetailNutrientFactDTO>? _nutrients;
@override List<FoodDetailNutrientFactDTO>? get nutrients {
  final value = _nutrients;
  if (value == null) return null;
  if (_nutrients is EqualUnmodifiableListView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "last_updated") final  String? lastUpdated;
@override@JsonKey(name: 'label_warnings') final  String? labelWarning;
@override@JsonKey(name: 'label_directions') final  String? labelDirection;
 final  List<CertificationsDTO>? _certifications;
@override List<CertificationsDTO>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'ingredient_preference_labels') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;
 final  List<RetailerDTO>? _retailers;
@override@JsonKey(name: 'retailers', defaultValue: []) List<RetailerDTO>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailResponseDTOCopyWith<_FoodDetailResponseDTO> get copyWith => __$FoodDetailResponseDTOCopyWithImpl<_FoodDetailResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&const DeepCollectionEquality().equals(other._upcs, _upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other._categoryGroups, _categoryGroups)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other._findings, _findings)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&const DeepCollectionEquality().equals(other._avoidFacts, _avoidFacts)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.servingInfo, servingInfo) || other.servingInfo == servingInfo)&&const DeepCollectionEquality().equals(other._quickFacts, _quickFacts)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&const DeepCollectionEquality().equals(other._retailers, _retailers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,productSize,const DeepCollectionEquality().hash(_upcs),name,brandName,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(_categoryGroups),webUrl,discontinued,scores,const DeepCollectionEquality().hash(_findings),addedSugarIngredients,imageUrl,asin,labelIngredients,const DeepCollectionEquality().hash(_avoidFacts),calories,servingInfo,const DeepCollectionEquality().hash(_quickFacts),const DeepCollectionEquality().hash(_nutrients),lastUpdated,labelWarning,labelDirection,const DeepCollectionEquality().hash(_certifications),ingredientPreferenceIndicator,const DeepCollectionEquality().hash(_retailers)]);

@override
String toString() {
  return 'FoodDetailResponseDTO(productType: $productType, productId: $productId, productSize: $productSize, upcs: $upcs, name: $name, brandName: $brandName, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, scores: $scores, findings: $findings, addedSugarIngredients: $addedSugarIngredients, imageUrl: $imageUrl, asin: $asin, labelIngredients: $labelIngredients, avoidFacts: $avoidFacts, calories: $calories, servingInfo: $servingInfo, quickFacts: $quickFacts, nutrients: $nutrients, lastUpdated: $lastUpdated, labelWarning: $labelWarning, labelDirection: $labelDirection, certifications: $certifications, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, retailers: $retailers)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailResponseDTOCopyWith<$Res> implements $FoodDetailResponseDTOCopyWith<$Res> {
  factory _$FoodDetailResponseDTOCopyWith(_FoodDetailResponseDTO value, $Res Function(_FoodDetailResponseDTO) _then) = __$FoodDetailResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_size') String? productSize, List<String>? upcs, String? name,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups,@JsonKey(name: 'web_url') String? webUrl, bool? discontinued, FoodDetailScoresDTO? scores,@JsonKey(name: 'page_details') List<FoodDetailPageDetailsDTO>? findings,@JsonKey(name: 'added_sugar_ingredients') String? addedSugarIngredients,@JsonKey(name: 'image_url') String? imageUrl, String? asin,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'avoid_facts') List<FoodDetailNutrientFactDTO>? avoidFacts, FoodDetailNutrientFactDTO? calories,@JsonKey(name: 'serving_info') FoodDetailServingInfoDTO? servingInfo,@JsonKey(name: 'quick_facts') List<FoodDetailNutrientFactDTO>? quickFacts, List<FoodDetailNutrientFactDTO>? nutrients,@JsonKey(name: "last_updated") String? lastUpdated,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection, List<CertificationsDTO>? certifications,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,@JsonKey(name: 'retailers', defaultValue: []) List<RetailerDTO>? retailers
});


@override $FoodDetailScoresDTOCopyWith<$Res>? get scores;@override $FoodDetailNutrientFactDTOCopyWith<$Res>? get calories;@override $FoodDetailServingInfoDTOCopyWith<$Res>? get servingInfo;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$FoodDetailResponseDTOCopyWithImpl<$Res>
    implements _$FoodDetailResponseDTOCopyWith<$Res> {
  __$FoodDetailResponseDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailResponseDTO _self;
  final $Res Function(_FoodDetailResponseDTO) _then;

/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? productSize = freezed,Object? upcs = freezed,Object? name = freezed,Object? brandName = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? scores = freezed,Object? findings = freezed,Object? addedSugarIngredients = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? labelIngredients = freezed,Object? avoidFacts = freezed,Object? calories = freezed,Object? servingInfo = freezed,Object? quickFacts = freezed,Object? nutrients = freezed,Object? lastUpdated = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? certifications = freezed,Object? ingredientPreferenceIndicator = freezed,Object? retailers = freezed,}) {
  return _then(_FoodDetailResponseDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self._upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self._categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as FoodDetailScoresDTO?,findings: freezed == findings ? _self._findings : findings // ignore: cast_nullable_to_non_nullable
as List<FoodDetailPageDetailsDTO>?,addedSugarIngredients: freezed == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,avoidFacts: freezed == avoidFacts ? _self._avoidFacts : avoidFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as FoodDetailNutrientFactDTO?,servingInfo: freezed == servingInfo ? _self.servingInfo : servingInfo // ignore: cast_nullable_to_non_nullable
as FoodDetailServingInfoDTO?,quickFacts: freezed == quickFacts ? _self._quickFacts : quickFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,nutrients: freezed == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,
  ));
}

/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $FoodDetailScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailNutrientFactDTOCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $FoodDetailNutrientFactDTOCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of FoodDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailServingInfoDTOCopyWith<$Res>? get servingInfo {
    if (_self.servingInfo == null) {
    return null;
  }

  return $FoodDetailServingInfoDTOCopyWith<$Res>(_self.servingInfo!, (value) {
    return _then(_self.copyWith(servingInfo: value));
  });
}/// Create a copy of FoodDetailResponseDTO
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
