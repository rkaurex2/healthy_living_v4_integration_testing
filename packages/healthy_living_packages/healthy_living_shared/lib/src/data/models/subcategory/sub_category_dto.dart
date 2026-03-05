import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_dto.freezed.dart';
part 'sub_category_dto.g.dart';

@freezed
sealed class SubCategoryDTO with _$SubCategoryDTO {
  const factory SubCategoryDTO({
    int? id,
    String? name,
    int? count,
  }) = _SubCategoryDTO;

  factory SubCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryDTOFromJson(json);
}
