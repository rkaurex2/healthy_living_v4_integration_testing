import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/universal_categories_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/mapper/browse_universal_categories_dto_mapper.dart';
import 'package:healthy_living_shared/src/domain/repository/universal_categories_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UniversalCategoriesRepository)
class DefaultUniversalCategoriesRepository
    implements UniversalCategoriesRepository {
  final UniversalCategoriesRemoteDataSource _dataSource;
  static DefaultUniversalCategoriesRepository? _instance;

  DefaultUniversalCategoriesRepository._internal(this._dataSource);

  @factoryMethod
  factory DefaultUniversalCategoriesRepository({
    required UniversalCategoriesRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultUniversalCategoriesRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<BrowseUniversalCategoriesModel?>> universalCategories({
    required bool isEWGVerified,
  }) async {
    final response = await _dataSource.universalCategories(
      isEwgVerified: isEWGVerified,
    );
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
