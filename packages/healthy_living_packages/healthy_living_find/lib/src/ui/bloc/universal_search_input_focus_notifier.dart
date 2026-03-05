import 'package:flutter/foundation.dart';

class UniversalSearchTextInputFocusNotifier extends ValueNotifier<bool> {
  UniversalSearchTextInputFocusNotifier._() : super(false);

  static final UniversalSearchTextInputFocusNotifier _shared =
      UniversalSearchTextInputFocusNotifier._();

  factory UniversalSearchTextInputFocusNotifier() => _shared;

  void updateFocus(bool hasFocus) {
    if (value != hasFocus) {
      value = hasFocus;
    }
  }
}
