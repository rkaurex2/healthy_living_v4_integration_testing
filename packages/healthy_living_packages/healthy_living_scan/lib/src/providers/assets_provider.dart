import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider that manages the available barcode image assets
final barcodeAssetsProvider = FutureProvider<List<String>>((ref) async {
  try {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assets =
        manifestMap.keys
            .where((String key) => key.contains('barcodes/images/'))
            .where(
              (String key) =>
                  key.toLowerCase().contains('.jpg') ||
                  key.toLowerCase().contains('.jpeg') ||
                  key.toLowerCase().contains('.png') ||
                  key.toLowerCase().contains('.webp'),
            )
            .toList()
          ..shuffle(); // Shuffle the assets for randomization in benchmarks

    if (kDebugMode) {
      print('Found ${assets.length} available barcode assets');
    }

    return assets;
  } catch (e) {
    if (kDebugMode) {
      print('Error getting barcode assets: $e');
    }
    rethrow;
  }
});

/// Provider that gives the count of available barcode assets
final availableAssetsCountProvider = FutureProvider<int>((ref) async {
  final assets = await ref.watch(barcodeAssetsProvider.future);
  return assets.length;
});
