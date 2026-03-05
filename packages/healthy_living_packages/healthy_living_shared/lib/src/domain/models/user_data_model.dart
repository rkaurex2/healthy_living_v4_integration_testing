import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
sealed class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    required String email,
    required String country,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'subscribe_newsletter') required bool subscribeNewsletter,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'intial_login') bool? initialLogin,
    @JsonKey(name: 'revenuecat')
    AuthRevenueCatResponseModel? revenueCat,
    List<EntitlementsResponseModel>? entitlements,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
