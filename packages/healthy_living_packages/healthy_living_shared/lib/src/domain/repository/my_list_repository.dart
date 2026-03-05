import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:network/network.dart';

abstract interface class MyListRepository {
  Future<NetworkResponse<List<UserListModel>?>> getUsersLists();
  Future<NetworkResponse<UserListModel?>> addProductToList({
    required AddToListRequestModel addToListRequestModel,
    required String listId,
  });
  Future<NetworkResponse<UserListModel?>> createMyItemList({
    required CreateListRequestModel request,
  });
}
