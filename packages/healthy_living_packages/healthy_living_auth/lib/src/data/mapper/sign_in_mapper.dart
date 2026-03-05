import 'package:healthy_living_auth/src/data/models/sign_in_response_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show UserDataModel;

extension SignInResponseDTOExtension on SignInResponseDTO {
  UserDataModel toDomain() {
    return UserDataModel(
      email: userData?.email ?? "",
      country: userData?.country ?? "",
      zipCode: userData?.zipCode ?? "",
      subscribeNewsletter: userData?.subscribeNewsletter ?? false,
      initialLogin: userData?.initialLogin ?? false,
      firstName: userData?.firstName ?? "",
      lastName: userData?.lastName ?? "",
    );
  }
}
