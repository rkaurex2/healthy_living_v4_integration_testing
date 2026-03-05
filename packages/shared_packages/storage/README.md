# Storage Package

A Flutter package that provides a unified interface for local storage operations, including both secure and non-secure storage capabilities.

## Features

- Key-Value Storage (using SharedPreferences)
    - Store and retrieve various data types (String, Int, Double, Bool, StringList)
    - Check for key existence
    - Remove specific keys or clear all data
    - Get all stored keys
    - Reload storage

- Secure Storage (using FlutterSecureStorage)
    - Store and retrieve sensitive string data
    - Check for key existence
    - Remove specific keys or clear all data
    - Get all stored keys

## Getting Started

Add this package to your project's dependencies:

```yaml
dependencies:
  storage:
    path: ../path_to_storage_package
```

## Usage

### Key-Value Storage

```dart
// Inject the KeyValueStorage instance
@injectable
class MyService {
  final KeyValueStorage storage;

  MyService(this.storage);

  Future<void> saveUserPreference(String key, String value) async {
    await storage.setString(key, value);
  }

  Future<String?> getUserPreference(String key) async {
    return await storage.getString(key);
  }
}
```

### Secure Storage

```dart
// Inject the SecureStorage instance
@injectable
class MySecureService {
  final SecureStorage secureStorage;

  MySecureService(this.secureStorage);

  Future<void> saveSecureData(String key, String value) async {
    await secureStorage.setString(key, value);
  }

  Future<String?> getSecureData(String key) async {
    return await secureStorage.getString(key);
  }
}
```
