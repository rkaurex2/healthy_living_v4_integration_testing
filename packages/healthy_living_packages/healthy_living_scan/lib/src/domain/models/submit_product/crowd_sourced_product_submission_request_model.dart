import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/ingredient_list_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/personal_care_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/sunscreen_details_attribute_request_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'crowd_sourced_product_submission_request_model.freezed.dart';
part 'crowd_sourced_product_submission_request_model.g.dart';

@freezed
sealed class CrowdSourcedProductSubmission
    with _$CrowdSourcedProductSubmission {
  const factory CrowdSourcedProductSubmission({
    required String name,

    @JsonKey(name: 'brand_name') required String brandName,

    @JsonKey(name: 'submitted_category') required String submittedCategory,

    @JsonKey(name: 'submitted_subtype', includeIfNull: false)
    String? subCategory,
    @JsonKey(name: 'net_contents_unit', includeIfNull: false)
    String? netContentsUnit,
    @JsonKey(name: 'net_contents_value', includeIfNull: false)
    String? netContentsValue,
    @JsonKey(name: 'ingredient_lists_attributes', includeIfNull: false)
    List<IngredientListAttributeRequestModel>? ingredientListsAttributes,
    @JsonKey(name: 'net_weight_value', includeIfNull: false)
    String? netWeightValue,
    @JsonKey(name: 'net_weight_unit', includeIfNull: false)
    String? netWeightUnit,
    @JsonKey(name: 'personal_care_details_attributes')
    PersonalCareDetailsAttributeRequestModel? personalCareDetailsAttributes,
    @JsonKey(name: 'submitted_subcategory', includeIfNull: false)
    String? category,
    @JsonKey(name: 'sunscreen_details_attributes')
    SunscreenDetailsAttributeRequestModel? sunscreenDetails,
  }) = _CrowdSourcedProductSubmission;

  const CrowdSourcedProductSubmission._();

  Map<String, dynamic> toApiJson() {
    return {
      'name': name,
      'brand_name': brandName,
      'submitted_category': submittedCategory,
      if (category != null) 'submitted_subcategory': category,
      if (subCategory != null) 'submitted_subtype': subCategory,
      if (netContentsUnit != null) 'net_contents_unit': netContentsUnit,
      if (netContentsValue != null) 'net_contents_value': netContentsValue,
      if (netWeightValue != null) 'net_weight_value': netWeightValue,
      if (netWeightUnit != null) 'net_weight_unit': netWeightUnit,
      if (ingredientListsAttributes.isValidList)
        'ingredient_lists_attributes':
            ingredientListsAttributes?.map((e) => e.toApiJson()).toList(),
      if (personalCareDetailsAttributes != null)
        'personal_care_details_attributes':
            personalCareDetailsAttributes!.toApiJson(),
      if (sunscreenDetails != null)
        'sunscreen_details_attributes': sunscreenDetails!.toApiJson(),
    };
  }

  factory CrowdSourcedProductSubmission.fromJson(Map<String, dynamic> json) =>
      _$CrowdSourcedProductSubmissionFromJson(json);
}
