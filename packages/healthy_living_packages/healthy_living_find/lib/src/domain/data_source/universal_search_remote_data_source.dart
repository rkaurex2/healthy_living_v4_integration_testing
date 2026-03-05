import 'package:healthy_living_find/src/data/models/search_response_dto.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:network/network.dart';

abstract interface class UniversalSearchRemoteDataSource {
  Future<NetworkResponse<SearchResponseDTO?>> universalSearch({
    required SearchRequestModel request,
  });
}
