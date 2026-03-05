# Network Package

A Dart/Flutter package for performing network-related tasks such as making API calls, with a focus
on modularity, testability, and ease of use.

## Features

- Unified interface for HTTP requests (GET, POST, PUT, DELETE, PATCH)
- Built on top of [Dio](https://pub.dev/packages/dio)
- Configurable headers and timeouts
- Dependency injection ready (supports get_it and injectable)
- Structured error and result handling
- Logging of requests and responses

## Getting Started

Add the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  network:
    path: ../shared_packages/network
```

## Usage

```dart
import 'package:network/network.dart';

final result = await client.get ('/testEndpoint', queryParameters: {'key': 'value'}, headers: {'Authorization': 'Bearer <token>'});
    if (result.isSuccess) {
        print(result.data);
    } else {
        print(result.error);
    }
}
```

## API

- `RestClient` (abstract): Defines the contract for network clients.
- `DioRestClient`: Concrete implementation using Dio.
- `NetworkResult`: Encapsulates success or error responses.
- `NetworkException`: Represents network errors.