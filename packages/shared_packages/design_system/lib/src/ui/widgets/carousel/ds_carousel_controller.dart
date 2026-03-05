import 'dart:async';

import 'package:flutter/animation.dart';

class DSCarouselController {
  Future<void> Function({Duration? duration, Curve? curve})? _nextPage;

  Future<void> nextPage({
    Duration duration = const Duration(milliseconds: 400),
    Curve curve = Curves.easeInOut,
  }) async {
    if (_nextPage != null) {
      _nextPage!(duration: duration, curve: curve);
    }
  }

  void bind({
    required Future<void> Function({Duration? duration, Curve? curve}) nextPage,
  }) {
    _nextPage = nextPage;
  }

  void unbind() {
    _nextPage = null;
  }
}
