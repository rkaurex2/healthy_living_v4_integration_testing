import 'package:healthy_living_product_detail/src/domain/models/user_list_items_model.dart';

class UserListModel {
  final int? id;
  final String? createdAt;
  final String? updatedAt;
  final String? name;
  final int? itemsCount;
  final String? url;
  final List<UserListItemsModel>? items;

  UserListModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.itemsCount,
    this.url,
    this.items,
  });
}
