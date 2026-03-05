import 'package:healthy_living_shared/healthy_living_shared.dart';

extension CurratedIngredientPrefernceListResponseDto
    on CuratedIngredientPreferenceListsResponseDto {
  List<CuratedIngredientPreferenceListModel?> toDomain() {
    return (curatedIngredientPreferenceLists ?? [])
        .map((e) => e.toDomain())
        .toList();
  }
}
