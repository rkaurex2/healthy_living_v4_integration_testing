import 'package:healthy_living_product_detail/src/data/models/retailer_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';

extension RetailerMapper on RetailerDTO {
  RetailerModel toDomain() {
    return RetailerModel(
      name: name ?? "",
      url: url,
      type: type ?? "",
    );
  }
}
