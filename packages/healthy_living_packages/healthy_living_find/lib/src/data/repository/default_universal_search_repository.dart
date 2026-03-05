import 'package:healthy_living_find/src/data/mapper/search_mapper.dart';
import 'package:healthy_living_find/src/domain/data_source/universal_search_remote_data_source.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UniversalSearchRepository)
class DefaultUniversalSearchRepository implements UniversalSearchRepository {
  final UniversalSearchRemoteDataSource _dataSource;
  static DefaultUniversalSearchRepository? _instance;

  DefaultUniversalSearchRepository._internal(this._dataSource);

  @factoryMethod
  factory DefaultUniversalSearchRepository({
    required UniversalSearchRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultUniversalSearchRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<SearchResponseModel?>> universalSearch({
    required SearchRequestModel request,
  }) async {
    final response = await _dataSource.universalSearch(request: request);
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
