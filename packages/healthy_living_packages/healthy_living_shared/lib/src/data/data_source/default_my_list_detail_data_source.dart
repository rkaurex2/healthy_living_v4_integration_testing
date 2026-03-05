import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_detail_request_dto.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_detail_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: MyListDetailDataSource)
class DefaultMyListDetailDataSource implements MyListDetailDataSource {
  static DefaultMyListDetailDataSource? _instance;
  final RestClient _restClient;
  final RestClient _unAuthenticateRestClient;

  DefaultMyListDetailDataSource._internal(this._restClient, this._unAuthenticateRestClient,);

  @factoryMethod
  factory DefaultMyListDetailDataSource(@apiRestClient RestClient restClient, @unauthenticatedApiRestClient RestClient unAuthenticateRestClient,) {
    _instance ??= DefaultMyListDetailDataSource._internal(restClient, unAuthenticateRestClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> productListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      ...UserListDetailRequest(page: page, perPage: pageSize).toQueryParams(),
    }..removeWhere((key, value) => value.toString().isEmpty);
    return await _unAuthenticateRestClient.get<UserListDetailDTO?>(
      SharedApiEndPoint.productListDetail(listId),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
      queryParams: queryParams,
    );
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> userListFromListId({
    required String listId,
    required int page,
    required int pageSize,
  }) async {
    return await _restClient.get<UserListDetailDTO?>(
      SharedApiEndPoint.userListDetail(listId),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
      queryParams:
          UserListDetailRequest(page: page, perPage: pageSize).toQueryParams(),
    );
  }

  @override
  Future<NetworkResponse> deleteList({required String listId}) async {
    return await _restClient.delete<UserListDetailDTO?>(
      SharedApiEndPoint.deleteUserList(listId),
      fromJson: (json) => null,
      queryParams: {},
      body: {},
    );
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> renameList({
    required String listId,
    required CreateListRequestModel request,
  }) async {
    return await _restClient.put<UserListDetailDTO>(
      SharedApiEndPoint.renameUserList(listId),
      body: request.toJson(),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> deleteProductsList({
    required String listId,
    required AddToListRequestModel addToListRequestModel,
  }) async {
    return await _restClient.put<UserListDetailDTO>(
      SharedApiEndPoint.deleteProductsUserList(listId),
      body: addToListRequestModel.toJson(),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
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
}
