import 'package:healthy_living_shared/src/core/di/injector.dart';
import 'package:healthy_living_shared/src/utils/identifier_util.dart';


class IdentifierQueryParamRequest {
  final String uuid;

  IdentifierQueryParamRequest({required this.uuid});

  static Future<IdentifierQueryParamRequest> fromIdentifier() async {
    final identifier = injector<Identifier>();
    final uuid = await identifier.identifier;
    return IdentifierQueryParamRequest(uuid: uuid);
  }

  Map<String, String> toJson() {
    return {'uuid': uuid};
  }
}
