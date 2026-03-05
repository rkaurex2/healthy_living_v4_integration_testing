import 'package:healthy_living_shared/src/domain/models/user_list/user_list_items_model.dart';

class UserListModel {
  final int id;
  final String createdAt;
  final String updatedAt;
  final String name;
  final int itemsCount;
  final int totalEntries;
  final String url;
  final List<UserListItemsModel> items;
  final List<int>? skippedItems;

  UserListModel({
    required this.items,
    required this.skippedItems,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.itemsCount,
    required this.totalEntries,
    required this.url,
  });
}
