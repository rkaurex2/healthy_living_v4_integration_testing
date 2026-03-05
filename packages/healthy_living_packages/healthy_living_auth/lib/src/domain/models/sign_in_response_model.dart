import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sign_in_response_model.freezed.dart';

@freezed
sealed class SignInResponseModel with _$SignInResponseModel {
  const factory SignInResponseModel({
    UserDataModel? userData,
  }) = _SignInResponseModel;
}
