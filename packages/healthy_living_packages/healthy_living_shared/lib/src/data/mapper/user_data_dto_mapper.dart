import 'package:healthy_living_shared/healthy_living_shared.dart'
    show UserDataDTO, UserDataModel;

extension UserDataDTOMapper on UserDataDTO {
  UserDataModel toDomain() {
    return UserDataModel(
      email: email ?? "",
      country: country ?? "",
      zipCode: zipCode ?? "",
      subscribeNewsletter: subscribeNewsletter ?? false,
      initialLogin: initialLogin ?? false,
      firstName: firstName ?? "",
      lastName: lastName ?? "",
    );
  }
}
