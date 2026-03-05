import 'package:healthy_living_shared/src/data/models/ingredient_preference/curated_ingredient_preference_list_dto.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_list_model.dart';

extension CuratedIngredientPreferenceListDtoMapper
    on CuratedIngredientPreferenceListDto? {
  CuratedIngredientPreferenceListModel? toDomain() {
    final dto = this;
    if (dto == null) {
      return null;
    }

    return CuratedIngredientPreferenceListModel(
      id: dto.id,
      name: dto.name,
      category: dto.category,
      listType: dto.listType,
      severityLevel: dto.severityLevel,
      description: dto.description,
      active: dto.active,
      priorityOrder: dto.priorityOrder,
      itemCount: dto.itemCount,
      userSelected: dto.userSelected,
      userSelectionId: dto.userSelectionId,
      userSelectionEnabled: dto.userSelectionEnabled,
      userSelectionPriority: dto.userSelectionPriority,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }
}
