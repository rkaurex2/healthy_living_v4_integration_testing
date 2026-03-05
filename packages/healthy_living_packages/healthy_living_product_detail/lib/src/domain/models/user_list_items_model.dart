import 'package:healthy_living_product_detail/src/domain/models/user_list_product_model.dart';

class UserListItemsModel {
  final int? id;
  final int? position;
  final int? productId;
  final String? productType;
  final UserListProductModel? product;

  UserListItemsModel({
    this.id,
    this.position,
    this.productId,
    this.productType,
    this.product,
  });
}
