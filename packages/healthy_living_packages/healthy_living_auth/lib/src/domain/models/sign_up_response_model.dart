import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sign_up_response_model.freezed.dart';

@freezed
sealed class SignUpResponseModel with _$SignUpResponseModel {
  const factory SignUpResponseModel({
    UserDataModel? userData,
  }) = _SignUpResponseModel;
}
