import 'package:injectable/injectable.dart';
import 'package:storage/storage.dart';
import 'package:uuid/uuid.dart';

@injectable
class Identifier {
  static const String _identifierKey = 'identifier';

  final KeyValueStorage _keyValueStorage;
  final Uuid _uuid;

  Identifier(this._keyValueStorage, @factoryParam Uuid? uuid)
      : _uuid = uuid ?? const Uuid();

  Future<String> get identifier async {
    final storedId = await _keyValueStorage.getString(_identifierKey);

    if (storedId != null) return storedId;

    final newId = _uuid.v4();
    await _keyValueStorage.setString(_identifierKey, newId);
    return newId;
  }
}
