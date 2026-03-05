import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class HistoryProductRepository {
  Future<NetworkResponse<GeneralResponseModel?>> addRecentlyViewedProduct({
    required RecentlyViewedProductRequestModel request,
  });

  Future<NetworkResponse<GetHistoryResponseModel?>> getRecentlyViewed({
    required GetHistoryRequestModel request,
  });

  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId});
}
