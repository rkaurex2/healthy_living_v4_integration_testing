import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyListRepository)
class DefaultMyListRepository implements MyListRepository {
  final MyListRemoteDataSource _myListDataSource;
  static DefaultMyListRepository? _instance;

  DefaultMyListRepository._internal(this._myListDataSource);

  @factoryMethod
  factory DefaultMyListRepository({
    required MyListRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultMyListRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<List<UserListModel>?>> getUsersLists() async {
    final response = await _myListDataSource.getUsersLists();
    return NetworkResponse<List<UserListModel>?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<UserListModel>> addProductToList({
    required AddToListRequestModel addToListRequestModel,
    required String listId,
  }) async {
    final response = await _myListDataSource.addProductToList(
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

  @override
  Future<NetworkResponse<UserListModel?>> createMyItemList({
    required CreateListRequestModel request,
  }) async {
    final createListResultResponse = await _myListDataSource.createMyItemList(
      request: request,
    );
    return NetworkResponse(
      data: createListResultResponse.data?.toDomain(),
      statusCode: createListResultResponse.statusCode,
      responseHeaders: createListResultResponse.responseHeaders,
    );
  }
}
