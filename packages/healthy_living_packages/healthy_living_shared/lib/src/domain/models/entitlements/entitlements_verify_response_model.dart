import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'entitlements_verify_response_model.freezed.dart';

@freezed
sealed class EntitlementsVerifyResponseModel with _$EntitlementsVerifyResponseModel {
  const factory EntitlementsVerifyResponseModel({
    UserDataModel? userData,
  }) = _EntitlementsVerifyResponseModel;
}
