import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sunscreen_details_attribute_request_model.freezed.dart';
part 'sunscreen_details_attribute_request_model.g.dart';

@freezed
sealed class SunscreenDetailsAttributeRequestModel
    with _$SunscreenDetailsAttributeRequestModel {
  const factory SunscreenDetailsAttributeRequestModel({
    @JsonKey(name: 'spf_value', includeIfNull: false) String? spfValue,
    @JsonKey(name: 'sunscreen_subcategory', includeIfNull: false)
    String? sunscreenSubcategory,
    @JsonKey(name: 'primary_active_ingredients')
    List<ActiveIngredientRequestModel>? primaryActiveIngredients,
  }) = _SunscreenDetailsAttributeRequestModel;

  const SunscreenDetailsAttributeRequestModel._();

  Map<String, dynamic> toApiJson() {
    return {
      if (spfValue != null) 'spf_value': spfValue,
      if (sunscreenSubcategory != null)
        'sunscreen_subcategory': sunscreenSubcategory,
      if (primaryActiveIngredients != null &&
          primaryActiveIngredients!.isNotEmpty)
        'primary_active_ingredients':
            primaryActiveIngredients!.map((e) => e.toApiJson()).toList(),
    };
  }

  factory SunscreenDetailsAttributeRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SunscreenDetailsAttributeRequestModelFromJson(json);
}
