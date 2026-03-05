import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_substance_dto.freezed.dart';
part 'parsed_substance_dto.g.dart';

@freezed
sealed class ParsedSubstanceDTO with _$ParsedSubstanceDTO {
  const factory ParsedSubstanceDTO({
    required String name,
    required String score,
    @JsonKey(name: 'ingred_id') required int ingredId,
    @JsonKey(name: 'orig_text') required String origText,
    @JsonKey(name: 'substance_id') required int substanceId,
    @JsonKey(name: 'ewg_verified_notscore') String? ewgVerifiedNotscore,
    String? concerns,
  }) = _ParsedSubstanceDTO;

  factory ParsedSubstanceDTO.fromJson(Map<String, dynamic> json) =>
      _$ParsedSubstanceDTOFromJson(json);
}
