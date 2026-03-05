import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class IngredientPreferenceRemoteDataSource {
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getCuratedIngredientPreferenceLists({
    required CuratedIngredientPreferenceListsRequestDto request,
  });

  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getCuratedIngredientPreferences({
    required CuratedIngredientPreferenceListsRequestDto request,
  });

  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getActivePreferences({
    required CuratedIngredientPreferenceListsRequestDto request,
  });

  Future<NetworkResponse<CuratedIngredientPreferenceListDto?>?>
  saveIngredientPreferences({
    required SaveCuratedIngredientPreferencesRequestModel request,
  });
  Future<NetworkResponse<String?>?> deleteIngredientPreferences({
    required int userSelectId,
  });
}
