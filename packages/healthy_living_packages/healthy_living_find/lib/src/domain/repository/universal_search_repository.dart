import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:network/network.dart';

abstract interface class UniversalSearchRepository {
  Future<NetworkResponse<SearchResponseModel?>> universalSearch({
    required SearchRequestModel request,
  });
}
