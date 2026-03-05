import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_list_dto.freezed.dart';
part 'add_to_list_dto.g.dart';

@freezed
sealed class AddToListDTO with _$AddToListDTO {
  const factory AddToListDTO({
    required String message,
    @JsonKey(name: 'list_id') required int listId,
  }) = _AddToListDTO;

  factory AddToListDTO.fromJson(Map<String, dynamic> json) =>
      _$AddToListDTOFromJson(json);
}
