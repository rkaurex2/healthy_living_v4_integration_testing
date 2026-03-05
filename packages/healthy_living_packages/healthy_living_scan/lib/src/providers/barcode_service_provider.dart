import 'package:healthy_living_scan/src/data/services/barcode/barcode_service_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final barcodeServiceProvider = Provider<BarcodeServiceManager>((ref) {
  final manager = BarcodeServiceManager();

  ref.onDispose(() {
    manager.dispose();
  });

  return manager;
});
