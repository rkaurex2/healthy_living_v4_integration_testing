import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_product_details_model.freezed.dart';

@freezed
sealed class ChildProductDetailsModel with _$ChildProductDetailsModel {
  const factory ChildProductDetailsModel({
    @JsonKey(name: 'prod_id') int? id,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    String? name,
    @JsonKey(name: 'label_ingredients') String? ingredients,
    @JsonKey(name: 'webscore') int? grade,
    @JsonKey(name: 'data_level') String? dataLevel,
  }) = _ChildProductDetailsModel;
}