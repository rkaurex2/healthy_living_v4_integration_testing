import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class SearchRemoteDataSource {
  Future<NetworkResponse<SearchResponseDTO?>> searchProductByBarcode({
    required SearchByBarcodeRequest searchByBarcodeRequest,
  });
}
