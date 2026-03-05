import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:storage/storage.dart';

@LazySingleton(as: UserDataLocalDataSource)
class DefaultUserDataLocalDataSource implements UserDataLocalDataSource {
  final KeyValueStorage _keyValueStorage;

  static DefaultUserDataLocalDataSource? _instance;

  DefaultUserDataLocalDataSource._internal(this._keyValueStorage);

  @factoryMethod
  factory DefaultUserDataLocalDataSource({
    required KeyValueStorage keyValueStorage,
  }) {
    _instance ??= DefaultUserDataLocalDataSource._internal(keyValueStorage);
    return _instance!;
  }

  @override
  Future<String?> getUserData() {
    return _keyValueStorage.getString(HealthyLivingSharedKeyValueConstant.user);
  }

  @override
  Future<void> saveUserData(String userDataModel) {
    return _keyValueStorage.setString(
      HealthyLivingSharedKeyValueConstant.user,
      userDataModel,
    );
  }

  @override
  Future<bool> remove(String key) {
    return _keyValueStorage.remove(key);
  }
}
