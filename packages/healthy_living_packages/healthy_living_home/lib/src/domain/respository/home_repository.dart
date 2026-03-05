import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class HomeRepository {
  Future<NetworkResponse<List<UserListModel?>>> getYourLists({
    required HomeYourListRequest homeYourListRequest,
  });
  Future<NetworkResponse<UserListModel?>> createYourList({
    required CreateListRequestModel request,
  });
  Future<NetworkResponse<List<GeneralProductListItemUIModel>>>
  getRecentViewList();
  Future<NetworkResponse<List<GeneralProductListItemUIModel>?>>
  getJustVerified({required JustVerifiedRequestModel justVerifiedRequestModel});
}
