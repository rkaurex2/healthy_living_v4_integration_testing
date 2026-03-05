import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_response_dto.dart';
import 'package:healthy_living_home/src/domain/data_source/home_remote_data_source.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/utils/home_api_end_points.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: HomeRemoteDataSource)
class DefaultHomeRemoteDataSource implements HomeRemoteDataSource {
  final RestClient _restClient;
  final RestClient _unAuthenticateRestClient;
  static DefaultHomeRemoteDataSource? _instance;

  DefaultHomeRemoteDataSource._internal(
    this._restClient,
    this._unAuthenticateRestClient,
  );

  @factoryMethod
  factory DefaultHomeRemoteDataSource({
    @apiRestClient required RestClient restClient,
    @unauthenticatedApiRestClient required RestClient unAuthenticateRestClient,
  }) {
    _instance ??= DefaultHomeRemoteDataSource._internal(
      restClient,
      unAuthenticateRestClient,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<List<UserListDTO>?>> getYourLists({
    required HomeYourListRequest homeYourListRequest,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      ...homeYourListRequest.toJson(),
    }..removeWhere((key, value) => value.toString().isEmpty);
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
      queryParams: queryParams,
    );
  }

  @override
  Future<NetworkResponse<SearchResponseDTO?>> getJustVerified({
    required JustVerifiedRequestModel justVerifiedRequestModel,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      ...justVerifiedRequestModel.toJson(),
    }..removeWhere((key, value) => value.toString().isEmpty);

    return _unAuthenticateRestClient.get(
      SharedApiEndPoint.search,
      fromJson: (json) {
        return SearchResponseDTO.fromJson(json);
      },
      queryParams: queryParams,
    );
  }

  @override
  Future<NetworkResponse<RecentActivityResponseDTO?>>
  getRecentViewList() async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    return _restClient.get(
      HomeApiEndPoints.recentlyViewed,
      fromJson: (json) {
        return RecentActivityResponseDTO.fromJson(json);
      },
      queryParams: queryParams,
    );
  }

  @override
  Future<NetworkResponse<UserListDetailDTO?>> createYourList({
    required CreateListRequestModel request,
  }) async {
    return await _restClient.post<UserListDetailDTO>(
      SharedApiEndPoint.userLists,
      body: request.toJson(),
      fromJson: (json) => UserListDetailDTO.fromJson(json),
    );
  }
}
