import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:network/network.dart';

abstract interface class MyListDetailDataSource {
  Future<NetworkResponse<UserListDetailDTO?>> productListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  });

  Future<NetworkResponse<UserListDetailDTO?>> userListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  });

  Future<NetworkResponse<dynamic>> deleteList({required String listId});
  Future<NetworkResponse<UserListDetailDTO?>> deleteProductsList({
    required String listId,
    required AddToListRequestModel addToListRequestModel,
  });

  Future<NetworkResponse<UserListDetailDTO?>> renameList({
    required String listId,
    required CreateListRequestModel request,
  });

  Future<NetworkResponse<UserListDTO?>> addProductToList({
    required AddToListRequestModel addToListRequestModel,
    required String listId,
  });
}
