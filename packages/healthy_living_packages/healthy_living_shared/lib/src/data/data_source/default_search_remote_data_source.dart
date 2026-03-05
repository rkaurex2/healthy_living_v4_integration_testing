import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/search_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: SearchRemoteDataSource)
class DefaultSearchRemoteDataSource implements SearchRemoteDataSource {
  final RestClient _restClient;
  static DefaultSearchRemoteDataSource? _instance;

  DefaultSearchRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultSearchRemoteDataSource({
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultSearchRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<SearchResponseDTO?>> searchProductByBarcode({
    required SearchByBarcodeRequest searchByBarcodeRequest,
  }) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _restClient.get<SearchResponseDTO?>(
      SharedApiEndPoint.searchByBarcode(searchByBarcodeRequest.upcCode),
      queryParams: queryParamRequest.toJson(),
      fromJson: (json) => SearchResponseDTO.fromJson(json),
    );
  }
}
