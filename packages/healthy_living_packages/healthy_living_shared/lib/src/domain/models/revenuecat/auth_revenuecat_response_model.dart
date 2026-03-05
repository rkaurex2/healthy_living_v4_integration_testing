import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_revenuecat_response_model.freezed.dart';
part 'auth_revenuecat_response_model.g.dart';

@freezed
sealed class AuthRevenueCatResponseModel with _$AuthRevenueCatResponseModel {
  const factory AuthRevenueCatResponseModel({
    @JsonKey(name: 'app_user_id') required String appUserId,
  }) = _AuthRevenueCatResponseModel;

  factory AuthRevenueCatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRevenueCatResponseModelFromJson(json);
}
