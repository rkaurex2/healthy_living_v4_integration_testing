import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: IngredientPreferenceRepository)
class DefaultIngredientPreferenceRepository
    implements IngredientPreferenceRepository {
  final IngredientPreferenceRemoteDataSource _remoteDataSource;
  static DefaultIngredientPreferenceRepository? _instance;

  DefaultIngredientPreferenceRepository._internal(this._remoteDataSource);

  @factoryMethod
  factory DefaultIngredientPreferenceRepository({
    required IngredientPreferenceRemoteDataSource remoteDataSource,
  }) {
    _instance ??= DefaultIngredientPreferenceRepository._internal(
      remoteDataSource,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>>
  getCuratedIngredientPreferenceLists({
    required CuratedIngredientPreferenceListsRequestModel request,
  }) async {
    final response = await _remoteDataSource
        .getCuratedIngredientPreferenceLists(request: request.toDto());

    return NetworkResponse(
      data: response.data.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<String>?> deleteIngredientPreferences({
    required int userSelectId,
  }) async {
    final response = await _remoteDataSource.deleteIngredientPreferences(
      userSelectId: userSelectId,
    );
    return NetworkResponse(
      data: response?.data,
      statusCode: response?.statusCode ?? 0,
      responseHeaders: response?.responseHeaders ?? {},
    );
  }

  @override
  Future<NetworkResponse<List<CuratedIngredientPreferenceListModel?>?>>
  getActivePreferences({
    required CuratedIngredientPreferenceListsRequestModel request,
  }) async {
    final response = await _remoteDataSource.getActivePreferences(
      request: request.toDto(),
    );
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<List<CuratedIngredientPreferenceListModel?>?>>
  getCuratedIngredientPreferences({
    required CuratedIngredientPreferenceListsRequestModel request,
  }) async {
    final response = await _remoteDataSource.getCuratedIngredientPreferences(
      request: request.toDto(),
    );
    return NetworkResponse(
      data: response.data!.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListModel>?>
  saveIngredientPreferences({
    required SaveCuratedIngredientPreferencesRequestModel request,
  }) async {
    final response = await _remoteDataSource.saveIngredientPreferences(
      request: request,
    );
    return NetworkResponse(
      data: response?.data?.toDomain(),
      statusCode: response?.statusCode ?? 0,
      responseHeaders: response?.responseHeaders ?? {},
    );
  }
}
