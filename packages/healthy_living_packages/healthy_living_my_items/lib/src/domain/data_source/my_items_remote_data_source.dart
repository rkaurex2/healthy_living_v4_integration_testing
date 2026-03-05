import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class MyItemsRemoteDataSource {
  Future<NetworkResponse<UserListDetailDTO?>> createMyItemList({
    required CreateListRequestModel request,
  });
  Future<NetworkResponse<List<UserListDTO>?>> getUserList();
}
