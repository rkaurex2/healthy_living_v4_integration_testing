import 'package:healthy_living_shared/healthy_living_shared.dart';

extension CreateListResponseDTOExtension on CreateListResultDTO {
  CreateListResultModel toDomain() {
    return CreateListResultModel(message: message, listId: listId ?? 0);
  }
}
