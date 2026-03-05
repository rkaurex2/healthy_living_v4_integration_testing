import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/cleaner_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/crowd_sourced_product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/food_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/ingredient_list_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/personal_care_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/product_image_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/sunscreen_details_attribute_request_model.dart';

part 'submit_product_request_model.freezed.dart';
part 'submit_product_request_model.g.dart';

@freezed
sealed class SubmitProductRequestModel with _$SubmitProductRequestModel {
  const factory SubmitProductRequestModel({
    @JsonKey(name: 'uuid', includeIfNull: false) required String? uuid,
    @JsonKey(name: 'final_user_edits_submit', includeIfNull: false)
    required bool? finalUserEditsSubmit,
    @JsonKey(name: 'crowd_sourced_product_submission')
    required CrowdSourcedProductSubmission crowdSourcedProductSubmission,
  }) = _SubmitProductRequestModel;

  const SubmitProductRequestModel._();

  Map<String, dynamic> toApiJson() {
    return {
      if (uuid != null) 'uuid': uuid,
      if (finalUserEditsSubmit != null)
        'final_user_edits_submit': finalUserEditsSubmit,
      'crowd_sourced_product_submission':
      crowdSourcedProductSubmission.toApiJson(),
    };
  }

  factory SubmitProductRequestModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$SubmitProductRequestModelFromJson(json);
}
