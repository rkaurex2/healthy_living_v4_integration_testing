import 'package:json_annotation/json_annotation.dart';

class SafeMapIntConverter implements JsonConverter<Map<String, int>?, Object?> {
  const SafeMapIntConverter();

  @override
  Map<String, int>? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      try {
        return json.map((k, v) => MapEntry(k, v as int));
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  @override
  Object? toJson(Map<String, int>? object) => object;
}
