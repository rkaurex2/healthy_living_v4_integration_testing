import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_business_response_dto.freezed.dart';
part 'search_business_response_dto.g.dart';

@freezed
sealed class SearchBusinessResponseDTO with _$SearchBusinessResponseDTO {
  const factory SearchBusinessResponseDTO({
    int? id,
    @JsonKey(name: 'as_param') String? asParam,
    String? name,
    @JsonKey(name: 'logo_url') String? logoUrl,
  }) = _SearchBusinessResponseDTO;

  factory SearchBusinessResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchBusinessResponseDTOFromJson(json);
}
