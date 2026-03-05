import 'dart:async';

import 'package:healthy_living_shared/healthy_living_shared.dart';

class UserSessionManager {
  UserSessionManager._internal();
  static final UserSessionManager instance = UserSessionManager._internal();

  final StreamController<UserSessionEventType> _controller =
  StreamController<UserSessionEventType>.broadcast();

  UserSessionEventType? _lastEvent;
  Completer<void>? _pendingCompleter;

  Stream<UserSessionEventType> get stream => _controller.stream;

  Future<void> fireAndWait(UserSessionEventType event) async {
    if (_lastEvent == event) return;
    _lastEvent = event;
    _pendingCompleter = Completer<void>();

    if (!_controller.isClosed) {
      _controller.add(event);
    }

    await _pendingCompleter!.future;

    _lastEvent = null;
  }

  void completeEvent() {
    _pendingCompleter?.complete();
    _pendingCompleter = null;
  }

  void dispose() {
    _controller.close();
  }
}
