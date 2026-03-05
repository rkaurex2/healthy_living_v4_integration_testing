import 'package:healthy_living_my_items/src/domain/data_source/my_items_remote_data_source.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyItemsRemoteDataSource)
class DefaultMyItemRemoteDataSource implements MyItemsRemoteDataSource {
  final RestClient _restClient;

  static DefaultMyItemRemoteDataSource? _instance;

  DefaultMyItemRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultMyItemRemoteDataSource({
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultMyItemRemoteDataSource._internal(restClient);
    return _instance!;
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

  @override
  Future<NetworkResponse<List<UserListDTO>?>> getUserList() {
    return _restClient.get<List<UserListDTO>>(
      SharedApiEndPoint.userLists,
      fromJson: (json) {
        if (json is List) {
          return json
              .whereType<Map<String, dynamic>>()
              .map((value) => UserListDTO.fromJson(value))
              .toList();
        }
        return [];
      },
      queryParams: {},
    );
  }
}
