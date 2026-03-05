//@GeneratedMicroModule;StoragePackageModule;package:storage/src/core/di/storage_di_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:storage/src/core/di/storage_di_module.dart' as _i179;
import 'package:storage/src/key_value_storage/default_key_value_storage.dart'
    as _i344;
import 'package:storage/src/key_value_storage/key_value_storage.dart' as _i760;
import 'package:storage/src/secure_storage/default_secure_storage.dart'
    as _i408;
import 'package:storage/src/secure_storage/secure_storage.dart' as _i1026;

class StoragePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final storageDIModule = _$StorageDIModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageDIModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => storageDIModule.flutterSecureStorage());
    gh.lazySingleton<_i760.KeyValueStorage>(
        () => _i344.DefaultKeyValueStorage(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i1026.SecureStorage>(
        () => _i408.DefaultSecureStorage(gh<_i558.FlutterSecureStorage>()));
  }
}

class _$StorageDIModule extends _i179.StorageDIModule {}
