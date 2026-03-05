import 'package:healthy_living_home/src/data/mapper/recent_activity_list_mapper.dart';
import 'package:healthy_living_home/src/domain/data_source/home_remote_data_source.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: HomeRepository)
class DefaultHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  static DefaultHomeRepository? _instance;

  DefaultHomeRepository._internal(this._dataSource);

  @factoryMethod
  factory DefaultHomeRepository({required HomeRemoteDataSource dataSource}) {
    _instance ??= DefaultHomeRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<List<UserListModel?>>> getYourLists({
    required HomeYourListRequest homeYourListRequest,
  }) async {
    final response = await _dataSource.getYourLists(
      homeYourListRequest: homeYourListRequest,
    );
    return NetworkResponse<List<UserListModel?>>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<List<GeneralProductListItemUIModel>>> getJustVerified({
    required JustVerifiedRequestModel justVerifiedRequestModel,
  }) async {
    final response = await _dataSource.getJustVerified(
      justVerifiedRequestModel: justVerifiedRequestModel,
    );
    return NetworkResponse(
      data: response.data?.skindeep?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<List<GeneralProductListItemUIModel>>>
  getRecentViewList() async {
    final response = await _dataSource.getRecentViewList();
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<UserListModel?>> createYourList({
    required CreateListRequestModel request,
  }) async {
    final createListResultResponse = await _dataSource.createYourList(
      request: request,
    );
    return NetworkResponse(
      data: createListResultResponse.data?.toDomain(),
      statusCode: createListResultResponse.statusCode,
      responseHeaders: createListResultResponse.responseHeaders,
    );
  }
}
