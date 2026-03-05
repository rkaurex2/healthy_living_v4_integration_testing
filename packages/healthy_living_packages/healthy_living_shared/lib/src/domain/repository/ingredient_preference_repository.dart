import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class IngredientPreferenceRepository {
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>>
  getCuratedIngredientPreferenceLists({
    required CuratedIngredientPreferenceListsRequestModel request,
  });

  Future<NetworkResponse<List<CuratedIngredientPreferenceListModel?>?>>
  getCuratedIngredientPreferences({
    required CuratedIngredientPreferenceListsRequestModel request,
  });

  Future<NetworkResponse<List<CuratedIngredientPreferenceListModel?>?>>
  getActivePreferences({
    required CuratedIngredientPreferenceListsRequestModel request,
  });

  Future<NetworkResponse<CuratedIngredientPreferenceListModel>?>
  saveIngredientPreferences({
    required SaveCuratedIngredientPreferencesRequestModel request,
  });

  Future<NetworkResponse<String>?> deleteIngredientPreferences({
    required int userSelectId,
  });
}
