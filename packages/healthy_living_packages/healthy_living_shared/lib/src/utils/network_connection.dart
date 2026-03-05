import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NetworkConnection {
  final Connectivity _connectivity;
  NetworkConnection._privateConstructor(this._connectivity);
  static NetworkConnection? _instance;
  factory NetworkConnection({required Connectivity connectivity}) {
    _instance = _instance ?? NetworkConnection._privateConstructor(connectivity);
    return _instance!;
  }

  StreamSubscription<List<ConnectivityResult>>? _subscription;
  bool _isConnected = true;

  Future<void> init() async {
    final result = await _connectivity.checkConnectivity();
    _isConnected = result.contains(ConnectivityResult.none) == false;
    _subscription = _connectivity.onConnectivityChanged.listen((
      List<ConnectivityResult> result,
    ) {
      _isConnected = result.contains(ConnectivityResult.none) == false;
    });
  }

  bool get isConnected => _isConnected;

  void dispose() {
    _subscription?.cancel();
  }
}
