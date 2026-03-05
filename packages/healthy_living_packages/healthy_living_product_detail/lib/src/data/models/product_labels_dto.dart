import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_labels_dto.freezed.dart';
part 'product_labels_dto.g.dart';

@freezed
sealed class ProductLabelsDTO with _$ProductLabelsDTO {
  const factory ProductLabelsDTO({
    required String? directions,
    required String? ingredients,
    required String? warnings,
  }) = _ProductLabelsDTO;

  factory ProductLabelsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductLabelsDTOFromJson(json);
}
