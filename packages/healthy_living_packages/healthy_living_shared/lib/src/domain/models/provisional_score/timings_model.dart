import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/label_timing_model.dart';

part 'timings_model.freezed.dart';

@freezed
sealed class TimingsModel with _$TimingsModel {
  const factory TimingsModel({
    required List<LabelTimingModel> labels,
    required double? llmSeconds,
    required double? ocrSeconds,
    required double? totalSeconds,
    required double? stitchSeconds,
  }) = _TimingsModel;
}
