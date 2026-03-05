import 'package:healthy_living_shared/healthy_living_shared.dart';

extension UserListDetailModelMapper on UserListDetailDTO {
  UserListModel toDomain() {
    return UserListModel(
      id: id ?? 0,
      createdAt: createdAt ?? "",
      updatedAt: updatedAt ?? "",
      name: name ?? "",
      itemsCount: itemsCount ?? 0,
      totalEntries: totalEntries ?? 0,
      skippedItems: [],
      url: url ?? "",
      items: items?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
