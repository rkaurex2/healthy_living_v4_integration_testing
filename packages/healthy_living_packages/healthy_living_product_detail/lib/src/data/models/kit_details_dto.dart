import 'package:freezed_annotation/freezed_annotation.dart';

part 'kit_details_dto.freezed.dart';
part 'kit_details_dto.g.dart';

@freezed
sealed class KitDetailsDTO with _$KitDetailsDTO {
  const factory KitDetailsDTO({
    @Default('') String scoreMin,
    @Default('') String scoreMax,
    @Default('') String kitRating,
  }) = _KitDetailsDTO;

  factory KitDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$KitDetailsDTOFromJson(json);
}