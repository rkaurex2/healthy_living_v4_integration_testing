import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: IngredientPreferenceRemoteDataSource)
class DefaultIngredientPreferenceRemoteDataSource
    implements IngredientPreferenceRemoteDataSource {
  final RestClient _restClient;
  static DefaultIngredientPreferenceRemoteDataSource? _instance;

  DefaultIngredientPreferenceRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultIngredientPreferenceRemoteDataSource({
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultIngredientPreferenceRemoteDataSource._internal(
      restClient,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getCuratedIngredientPreferenceLists({
    required CuratedIngredientPreferenceListsRequestDto request,
  }) async {
    return _restClient.get(
      SharedApiEndPoint.curatedIngredientPreferenceLists,
      queryParams: {
        "filter[category]": request.filterCategory ?? '',
        "filter[user_selected]": request.filterUserSelected.toString(),
      },
      fromJson:
          (json) => CuratedIngredientPreferenceListsResponseDto.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<String?>?> deleteIngredientPreferences({
    required int userSelectId,
  }) async {
    return await _restClient.delete<String>(
      SharedApiEndPoint.curatedIngredientPreferencesListUserSelectionId(
        userSelectId.toString(),
      ),
      fromJson: (json) => json,
      body: null,
    );
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getCuratedIngredientPreferences({
    required CuratedIngredientPreferenceListsRequestDto request,
  }) async {
    return await _restClient.get<CuratedIngredientPreferenceListsResponseDto>(
      SharedApiEndPoint.curatedIngredientPreferenceLists,
      fromJson:
          (json) => CuratedIngredientPreferenceListsResponseDto.fromJson(json),
      queryParams: {
        "filter[category]": request.filterCategory ?? '',
        "filter[user_selected]": request.filterUserSelected.toString(),
      },
    );
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListDto?>?>
  saveIngredientPreferences({
    required SaveCuratedIngredientPreferencesRequestModel request,
  }) async {
    return await _restClient.post<CuratedIngredientPreferenceListDto>(
      SharedApiEndPoint.curatedIngredientPreferencesListUserSelection,
      fromJson: (json) => CuratedIngredientPreferenceListDto.fromJson(json),
      body: request.toJson(),
    );
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>>
  getActivePreferences({
    required CuratedIngredientPreferenceListsRequestDto request,
  }) async {
    return await _restClient.get<CuratedIngredientPreferenceListsResponseDto>(
      SharedApiEndPoint.curatedIngredientPreferenceLists,
      fromJson:
          (json) => CuratedIngredientPreferenceListsResponseDto.fromJson(json),
      queryParams: {
        "filter[category]": request.filterCategory ?? '',
        "filter[user_selected]": request.filterUserSelected.toString(),
      },
    );
  }
}
