import 'package:healthy_living_my_items/src/domain/data_source/my_items_remote_data_source.dart';
import 'package:healthy_living_my_items/src/domain/respository/my_items_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyItemsRepository)
class DefaultMyItemsRepository implements MyItemsRepository {
  MyItemsRemoteDataSource _myItemsRemoteDataSource;
  static DefaultMyItemsRepository? _instance;

  DefaultMyItemsRepository._internal(this._myItemsRemoteDataSource);

  @factoryMethod
  factory DefaultMyItemsRepository({
    required MyItemsRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultMyItemsRepository._internal(dataSource);
    return _instance!;
  }
  @override
  Future<NetworkResponse<UserListModel?>> createMyItemList({
    required CreateListRequestModel request,
  }) async {
    final createListResultResponse = await _myItemsRemoteDataSource
        .createMyItemList(request: request);
    return NetworkResponse(
      data: createListResultResponse.data?.toDomain(),
      statusCode: createListResultResponse.statusCode,
      responseHeaders: createListResultResponse.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<List<UserListModel>?>> getUserList() async {
    final response = await _myItemsRemoteDataSource.getUserList();
    return NetworkResponse<List<UserListModel>?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
