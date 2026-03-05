import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/add_to_list_dto.dart';

extension AddToListDTOMapper on AddToListDTO {
  CreateListResultModel toDomain() {
    return CreateListResultModel(listId: listId, message: message);
  }
}
