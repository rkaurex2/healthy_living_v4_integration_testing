import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_your_list_request.freezed.dart';
part 'home_your_list_request.g.dart';

@freezed
sealed class HomeYourListRequest with _$HomeYourListRequest {
  const factory HomeYourListRequest({
    @JsonKey(name: 'sort_by') String? sortBy,
    @JsonKey(name: 'sort_order') String? sortOrder,
  }) = _HomeYourListRequest;

  factory HomeYourListRequest.fromJson(Map<String, dynamic> json) =>
      _$HomeYourListRequestFromJson(json);
}
