import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_product_details_dto.freezed.dart';
part 'child_product_details_dto.g.dart';

@freezed
sealed class ChildProductDetailsDTO with _$ChildProductDetailsDTO {
  const factory ChildProductDetailsDTO({
    @JsonKey(name: 'prod_id') int? id,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    String? name,
    @JsonKey(name: 'label_ingredients') String? ingredients,
    @JsonKey(name: 'webscore') int? grade,
    @JsonKey(name: 'data_level') String? dataLevel,
  }) = _ChildProductDetailsDTO;

  factory ChildProductDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$ChildProductDetailsDTOFromJson(json);
}