import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyListRemoteDataSource)
class DefaultMyListRemoteDataSource implements MyListRemoteDataSource {
  static DefaultMyListRemoteDataSource? _instance;
  final RestClient _restClient;

  DefaultMyListRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultMyListRemoteDataSource(@apiRestClient RestClient restClient) {
    _instance ??= DefaultMyListRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<List<UserListDTO?>?>> getUsersLists() {
    return _restClient.get<List<UserListDTO?>>(
      SharedApiEndPoint.userLists,
      fromJson: (json) {
        if (json is List) {
          return json
              .map<UserListDTO?>(
                (value) =>
                    value is Map<String, dynamic>
                        ? UserListDTO.fromJson(value)
                        : null,
              )
              .toList();
        }
        return [];
      },
      queryParams: {},
    );
  }

  @override
  Future<NetworkResponse<UserListDTO?>> addProductToList({
    required AddToListRequestModel addToListRequestModel,
    required String listId,
  }) {
    return _restClient.put<UserListDTO>(
      SharedApiEndPoint.userListDetail(listId),
      fromJson: (json) => UserListDTO.fromJson(json),
      queryParams: {},
      body: addToListRequestModel.toJson(),
    );
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> createMyItemList({
    required CreateListRequestModel request,
  }) async {
    return await _restClient.post<UserListDetailDTO>(
      SharedApiEndPoint.userLists,
      body: request.toJson(),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
    );
  }
}
