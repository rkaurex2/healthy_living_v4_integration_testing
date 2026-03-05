import 'package:flutter/material.dart';

extension ListValidate on List<dynamic>? {
  bool get isValidList {
    try {
      return this != null && this!.isNotEmpty;
    } on Exception catch (ex, trace) {
      debugPrint("isValidList Exception: ${ex.toString()}");
      debugPrint("isValidList Stack Trace: ${trace.toString()}");
      return false;
    }
  }
}
