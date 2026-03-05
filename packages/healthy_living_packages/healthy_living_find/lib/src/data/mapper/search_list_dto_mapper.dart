import 'package:healthy_living_find/src/data/mapper/search_mapper.dart';
import 'package:healthy_living_find/src/data/models/search_lists_dto.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';

extension SearchListsDTOMapper on SearchListsDTO {
  SearchListsModel toDomain() {
    return SearchListsModel(
      id: id ?? -1,
      type: type ?? '',
      name: name ?? '',
      description: description ?? '',
      ownerName: ownerName ?? '',
      itemsCount: itemsCount ?? 0,
      highlights: highlights?.toDomain(),
    );
  }
}
