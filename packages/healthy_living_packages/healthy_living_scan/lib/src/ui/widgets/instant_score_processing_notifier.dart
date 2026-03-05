import 'dart:async';
import 'package:flutter/foundation.dart';

class InstantScoreProcessingNotifier extends ChangeNotifier {
  Timer? _subMessageTimer;
  int _subMessageIndex = 0;

  int get subMessageIndex => _subMessageIndex;

  InstantScoreProcessingNotifier() {
    _startTimer();
  }

  void _startTimer() {
    _subMessageTimer = Timer(const Duration(seconds: 15), () {
      _subMessageIndex = 1;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subMessageTimer?.cancel();
    super.dispose();
  }
}
