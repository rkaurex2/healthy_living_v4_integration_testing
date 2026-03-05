import 'package:healthy_living_product_detail/src/data/models/kit_details_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension KitDetailsMapper on KitDetailsDTO {
  KitDetailsModel toDomain() {
    return KitDetailsModel(
      scoreMin: scoreMin,
      scoreMax: scoreMax,
      kitRating: kitRating,
    );
  }
}
