import 'package:freezed_annotation/freezed_annotation.dart';

part 'substance_dto.freezed.dart';
part 'substance_dto.g.dart';

@freezed
sealed class SubstanceDTO with _$SubstanceDTO {
  const factory SubstanceDTO({int? id, @JsonKey(name: 'name') String? name}) =
      _SubstanceDTO;

  factory SubstanceDTO.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDTOFromJson(json);
}
