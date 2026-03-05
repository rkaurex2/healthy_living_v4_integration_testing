import 'package:freezed_annotation/freezed_annotation.dart';
part 'label_timing_dto.freezed.dart';
part 'label_timing_dto.g.dart';
@freezed
sealed class LabelTimingDTO with _$LabelTimingDTO {
  const factory LabelTimingDTO({
    @JsonKey(name: 'label_name') String? labelName,
    @JsonKey(name: 'image_count') int? imageCount,
  }) = _LabelTimingDTO;

  factory LabelTimingDTO.fromJson(Map<String, dynamic> json) =>
      _$LabelTimingDTOFromJson(json);
}
