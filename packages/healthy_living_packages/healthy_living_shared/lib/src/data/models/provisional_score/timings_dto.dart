import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/label_timing_dto.dart';

part 'timings_dto.freezed.dart';
part 'timings_dto.g.dart';
@freezed
sealed class TimingsDTO with _$TimingsDTO {
  const factory TimingsDTO({
    List<LabelTimingDTO>? labels,
    @JsonKey(name: 'llm_seconds') double? llmSeconds,
    @JsonKey(name: 'ocr_seconds') double? ocrSeconds,
    @JsonKey(name: 'total_seconds') double? totalSeconds,
    @JsonKey(name: 'stitch_seconds') double? stitchSeconds,
  }) = _TimingsDTO;

  factory TimingsDTO.fromJson(Map<String, dynamic> json) =>
      _$TimingsDTOFromJson(json);
}
