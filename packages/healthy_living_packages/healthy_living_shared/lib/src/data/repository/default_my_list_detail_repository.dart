import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_detail_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyListDetailRepository)
class DefaultMyListDetailRepository implements MyListDetailRepository {
  final MyListDetailDataSource _myListDetailDataSource;
  static DefaultMyListDetailRepository? _instance;

  DefaultMyListDetailRepository._internal(this._myListDetailDataSource);

  @factoryMethod
  factory DefaultMyListDetailRepository({
    required MyListDetailDataSource myListDetailDataSource,
  }) {
    _instance ??= DefaultMyListDetailRepository._internal(
      myListDetailDataSource,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<UserListModel?>> productListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  }) async {
    final response = await _myListDetailDataSource.productListFromListId(
      listId: listId,
      pageSize: pageSize,
      page: page,
    );
    return NetworkResponse<UserListModel>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<UserListModel?>> userListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  }) async {
    final response = await _myListDetailDataSource.userListFromListId(
      listId: listId,
      pageSize: pageSize,
      page: page,
    );
    return NetworkResponse<UserListModel>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse> deleteList({required String listId}) async {
    final response = await _myListDetailDataSource.deleteList(listId: listId);
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<UserListModel?>> renameList({
    required String listId,
    required CreateListRequestModel request,
  }) async {
    final renameListResultResponse = await _myListDetailDataSource.renameList(
      listId: listId,
      request: request,
    );
    return NetworkResponse(
      data: renameListResultResponse.data?.toDomain(),
      statusCode: renameListResultResponse.statusCode,
      responseHeaders: renameListResultResponse.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<UserListModel>> deleteProductsList({
    required String listId,
    required AddToListRequestModel addToListRequestModel,
  }) async {
    final response = await _myListDetailDataSource.deleteProductsList(
      listId: listId,
      addToListRequestModel: addToListRequestModel,
    );
    return NetworkResponse<UserListModel>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<UserListModel?>> addProductToList({
    required AddToListRequestModel addToListRequestModel,
    required String listId,
  }) async {
    final response = await _myListDetailDataSource.addProductToList(
      listId: listId,
      addToListRequestModel: addToListRequestModel,
    );
    return NetworkResponse<UserListModel>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
