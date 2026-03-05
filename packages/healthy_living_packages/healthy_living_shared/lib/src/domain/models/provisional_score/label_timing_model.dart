import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_timing_model.freezed.dart';

@freezed
sealed class LabelTimingModel with _$LabelTimingModel {
  const factory LabelTimingModel({
    required String? labelName,
    required int? imageCount,
  }) = _LabelTimingModel;
}
