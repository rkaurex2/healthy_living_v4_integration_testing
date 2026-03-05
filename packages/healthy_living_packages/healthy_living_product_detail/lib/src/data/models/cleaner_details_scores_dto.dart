import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleaner_details_scores_dto.freezed.dart';
part 'cleaner_details_scores_dto.g.dart';

@freezed
sealed class CleanerDetailsScoresDTO with _$CleanerDetailsScoresDTO {
  const factory CleanerDetailsScoresDTO({
    @JsonKey(name: 'asthma_score') String? asthmaScore,
    @JsonKey(name: 'skin_score') String? skinScore,
    @JsonKey(name: 'devrepro_score') String? devreproScore,
    @JsonKey(name: 'cancer_score') String? cancerScore,
    @JsonKey(name: 'environment_score') String? environmentScore,
  }) = _CleanerDetailsScoresDTO;

  factory CleanerDetailsScoresDTO.fromJson(Map<String, dynamic> json) =>
      _$CleanerDetailsScoresDTOFromJson(json);
}