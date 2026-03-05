import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@singleton
class UuidUtils {
  UuidUtils();

  final _uuid = Uuid();

  String generateV4() {
    return _uuid.v4();
  }
}