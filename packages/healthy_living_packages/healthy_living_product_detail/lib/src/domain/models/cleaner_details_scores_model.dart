import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleaner_details_scores_model.freezed.dart';

@freezed
sealed class CleanerDetailsScoresModel with _$CleanerDetailsScoresModel {
  const factory CleanerDetailsScoresModel({
    @JsonKey(name: 'asthma_score') String? asthmaScore,
    @JsonKey(name: 'skin_score') String? skinScore,
    @JsonKey(name: 'devrepro_score') String? devreproScore,
    @JsonKey(name: 'cancer_score') String? cancerScore,
    @JsonKey(name: 'environment_score') String? environmentScore,
  }) = _CleanerDetailsScoresModel;
}