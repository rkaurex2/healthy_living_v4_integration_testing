import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart' show NetworkResponse;

abstract interface class HistoryProductRemoteDataSource {
  Future<NetworkResponse<GeneralResponseDTO?>> addRecentlyViewedProduct(
    RecentlyViewedProductRequestDTO request,
  );

  Future<NetworkResponse<GetHistoryResponseDTO?>> getRecentlyViewed({
    required GetHistoryRequestDTO request,
  });
  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId});

}
