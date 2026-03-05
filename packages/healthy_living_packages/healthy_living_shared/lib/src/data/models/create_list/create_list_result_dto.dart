import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_list_result_dto.freezed.dart';
part 'create_list_result_dto.g.dart';

@freezed
sealed class CreateListResultDTO with _$CreateListResultDTO {
  const factory CreateListResultDTO({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'list_id') int? listId,
  }) = _CreateListResultDTO;

  factory CreateListResultDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateListResultDTOFromJson(json);
}
