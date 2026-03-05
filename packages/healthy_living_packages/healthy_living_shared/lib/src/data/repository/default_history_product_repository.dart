import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/mapper/recently_viewed/recently_viewed_product_mapper.dart';
import 'package:healthy_living_shared/src/domain/data_source/history_product_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/mapper/get_recently_viewed_request_model_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: HistoryProductRepository)
class DefaultHistoryProductRepository
    implements HistoryProductRepository {
  final HistoryProductRemoteDataSource _dataSource;
  static DefaultHistoryProductRepository? _instance;

  DefaultHistoryProductRepository._internal(this._dataSource);

  @factoryMethod
  factory DefaultHistoryProductRepository({
    required HistoryProductRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultHistoryProductRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<GeneralResponseModel?>> addRecentlyViewedProduct({
    required RecentlyViewedProductRequestModel request,
  }) async {
    final requestParams = request.toDTO();
    final response = await _dataSource.addRecentlyViewedProduct(requestParams);
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<GetHistoryResponseModel?>> getRecentlyViewed({
    required GetHistoryRequestModel request,
  }) async {
    final response = await _dataSource.getRecentlyViewed(
      request: request.toDTO(),
    );
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId}) async {
    final response = await _dataSource.pollingOCRProvisionalScore(jobId: jobId);
    return NetworkResponse<OcrProvisionalScoreResponseDTO?>(
      data: response.data,
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
