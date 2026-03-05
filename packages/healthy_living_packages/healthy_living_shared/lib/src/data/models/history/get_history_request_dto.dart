import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_history_request_dto.freezed.dart';
part 'get_history_request_dto.g.dart';

@freezed
sealed class GetHistoryRequestDTO with _$GetHistoryRequestDTO {
  const factory GetHistoryRequestDTO({
    required int page,
    @JsonKey(name: 'history_type') required String historyType,
    @JsonKey(name: 'per_page') required int perPage,
  }) = _GetHistoryRequestDTO;

  factory GetHistoryRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetHistoryRequestDTOFromJson(json);
}
