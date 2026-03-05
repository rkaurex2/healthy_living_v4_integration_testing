import 'package:healthy_living_product_detail/src/data/models/certifications_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';

extension CerificationsMapper on CertificationsDTO {
  CertificationsModel toDomain() {
    return CertificationsModel(
      name: name ?? "",
      id: id??-1,
      asParam: asParam ?? "",
      logoUrl: logoUrl ?? "",
      website: website ?? "",
      description: description ?? "",
    );
  }
}
