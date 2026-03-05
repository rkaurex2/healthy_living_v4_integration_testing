import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/universal_categories_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_universal_categories_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UniversalCategoriesRemoteDataSource)
class DefaultUniversalCategoriesRemoteDataSource
    implements UniversalCategoriesRemoteDataSource {
  final RestClient _restClient;
  static DefaultUniversalCategoriesRemoteDataSource? _instance;

  DefaultUniversalCategoriesRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultUniversalCategoriesRemoteDataSource({
    @unauthenticatedApiRestClient required RestClient unauthenticatedRestClient,
    @apiRestClient required RestClient restClient,
    required FilterUtils filterUtils,
  }) {
    _instance ??= DefaultUniversalCategoriesRemoteDataSource._internal(
      restClient,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<BrowseUniversalCategoriesDTO?>> universalCategories({
    required isEwgVerified,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();

    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      StringConstants.ewgVerified: isEwgVerified.toString(),
    }..removeWhere((key, value) => (value == false.toString()));

    return _restClient.get(
      SharedApiEndPoint.universalCategories,
      fromJson: (json) {
        return BrowseUniversalCategoriesDTO.fromJson(json);
      },
      queryParams: queryParams,
    );
  }
}
