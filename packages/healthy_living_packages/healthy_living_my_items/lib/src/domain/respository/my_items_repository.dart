import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class MyItemsRepository {
  Future<NetworkResponse<UserListModel?>> createMyItemList({
    required CreateListRequestModel request,
  });

  Future<NetworkResponse<List<UserListModel>?>> getUserList();
}
