import 'package:healthy_living_shared/src/data/models/general_response_dto.dart';
import 'package:healthy_living_shared/src/domain/models/general_response_model.dart';

extension GeneralResponseDTOMapper on GeneralResponseDTO {
  GeneralResponseModel toDomain() {
    return GeneralResponseModel(
      success: (status ?? '').toLowerCase() == 'success',
      message: message ?? '',
    );
  }
}
