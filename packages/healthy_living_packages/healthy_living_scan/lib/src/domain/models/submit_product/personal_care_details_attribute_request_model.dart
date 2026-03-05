import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_care_details_attribute_request_model.freezed.dart';
part 'personal_care_details_attribute_request_model.g.dart';

@freezed
sealed class PersonalCareDetailsAttributeRequestModel
    with _$PersonalCareDetailsAttributeRequestModel {
  const factory PersonalCareDetailsAttributeRequestModel({
    @JsonKey(name: 'product_form') required String productForm,
    @JsonKey(name: 'product_usage') required String productUsage,
    @JsonKey(name: 'use_on_damaged_skin', includeIfNull: false)  bool? useOnDamagedSkin,
  }) = _PersonalCareDetailsAttributeRequestModel;

  const PersonalCareDetailsAttributeRequestModel._();

  Map<String, dynamic> toApiJson() {
    return {
      'product_form': productForm,
      'product_usage': productUsage,
      'use_on_damaged_skin': useOnDamagedSkin,
    };
  }

  factory PersonalCareDetailsAttributeRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$PersonalCareDetailsAttributeRequestModelFromJson(json);
}
