import 'package:freezed_annotation/freezed_annotation.dart';

part 'just_verified_request_model.freezed.dart';
part 'just_verified_request_model.g.dart';

@freezed
sealed class JustVerifiedRequestModel with _$JustVerifiedRequestModel {
  const factory JustVerifiedRequestModel({
    @JsonKey(name: 'search') String? search,
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'per_page') String? perPage,
    @JsonKey(name: 'sort') String? sort,
    @JsonKey(name: 'direction') String? direction,
    @JsonKey(name: 'limit_to_ewgv') String? limitToEwgv,
  }) = _JustVerifiedRequestModel;

  factory JustVerifiedRequestModel.fromJson(Map<String, dynamic> json) =>
      _$JustVerifiedRequestModelFromJson(json);
}
