import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_response_dto.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class HomeRemoteDataSource {
  Future<NetworkResponse<List<UserListDTO>?>> getYourLists({
    required HomeYourListRequest homeYourListRequest,
  });
  Future<NetworkResponse<RecentActivityResponseDTO?>> getRecentViewList();
  Future<NetworkResponse<SearchResponseDTO?>> getJustVerified({
    required JustVerifiedRequestModel justVerifiedRequestModel,
  });

  Future<NetworkResponse<UserListDetailDTO?>> createYourList({
    required CreateListRequestModel request,
  });
}
