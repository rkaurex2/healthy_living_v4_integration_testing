import 'package:healthy_living_shared/healthy_living_shared.dart'
    show IdentifierQueryParamRequest, SharedApiEndPoint, apiRestClient;
import 'package:healthy_living_shared/src/data/mapper/recently_viewed/get_recently_viewed_request_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/general_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/history/get_history_request_dto.dart';
import 'package:healthy_living_shared/src/data/models/history/get_history_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/ocr_provisional_score_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/recently_viewed/recently_viewed_product_request_dto.dart';
import 'package:healthy_living_shared/src/domain/data_source/history_product_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart' show NetworkResponse, RestClient;

@LazySingleton(as: HistoryProductRemoteDataSource)
class DefaultHistoryProductRemoteDataSource
    implements HistoryProductRemoteDataSource {
  final RestClient _restClient;
  static DefaultHistoryProductRemoteDataSource? _instance;

  DefaultHistoryProductRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultHistoryProductRemoteDataSource({
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultHistoryProductRemoteDataSource._internal(
      restClient,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO?>> addRecentlyViewedProduct(
    RecentlyViewedProductRequestDTO request,
  ) async {
    return await _restClient.patch<GeneralResponseDTO>(
      SharedApiEndPoint.recentlyViewedAdd,
      body: request.toJson(),
      fromJson: (json) => GeneralResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<GetHistoryResponseDTO?>> getRecentlyViewed({
    required GetHistoryRequestDTO request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      ...request.toQueryParams(),
    };
    return await _restClient.get<GetHistoryResponseDTO>(
      SharedApiEndPoint.history,
      queryParams: queryParams,
      fromJson: (json) => GetHistoryResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId}) async{
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    final response = await _restClient.get<OcrProvisionalScoreResponseDTO?>(
      SharedApiEndPoint.ocrExtractionsWithID(jobId),
      queryParams: queryParams,
      fromJson: (json) {
        return OcrProvisionalScoreResponseDTO.fromJson(json);
      },
    );

    return response;
  }
}
