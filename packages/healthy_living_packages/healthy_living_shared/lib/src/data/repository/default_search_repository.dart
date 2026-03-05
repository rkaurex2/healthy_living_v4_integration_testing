import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/search_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: SearchRepository)
class DefaultSearchRepository implements SearchRepository {
  final SearchRemoteDataSource _dataSource;
  static DefaultSearchRepository? _instance;

  DefaultSearchRepository._internal(this._dataSource);

  @factoryMethod
  factory DefaultSearchRepository({
    required SearchRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultSearchRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<GeneralProductListItemUIModel?>>
  searchProductByBarcode({
    required SearchByBarcodeRequest searchByBarcodeRequest,
  }) async {
    final response = await _dataSource.searchProductByBarcode(
      searchByBarcodeRequest: searchByBarcodeRequest,
    );

    final List<GeneralProductListItemUIModel> allProducts = [
      ...?response.data?.foodscores?.toDomain(),

      ...?response.data?.cleaners?.toDomain(),

      ...?response.data?.skindeep?.toDomain(),

      ...?response.data?.sunscreens?.toDomain(),
    ];

    // Get the first product if exists
    final product = allProducts.isNotEmpty ? allProducts.first : null;

    return NetworkResponse(
      data: product,
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
