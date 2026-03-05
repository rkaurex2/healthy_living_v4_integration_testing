import 'package:healthy_living_shared/src/domain/models/search/general_product_list_item_ui_model.dart';
import 'package:healthy_living_shared/src/domain/models/search/search_by_barcode_request.dart';
import 'package:network/network.dart';

abstract interface class SearchRepository {
  Future<NetworkResponse<GeneralProductListItemUIModel?>>
  searchProductByBarcode({required SearchByBarcodeRequest searchByBarcodeRequest});
}
