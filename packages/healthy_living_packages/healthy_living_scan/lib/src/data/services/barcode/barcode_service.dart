import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class BarcodeService {
  Future<String> getAssetPath(String assetPath) async {
    // If the path starts with '/', it's a file path, not an asset
    if (assetPath.startsWith('/')) {
      return assetPath;
    }

    final path = await _getLocalPath(assetPath);

    await Directory(dirname(path)).create(recursive: true);

    final file = File(path);

    if (!await file.exists()) {
      final byteData = await rootBundle.load(assetPath);
      await file.writeAsBytes(
        byteData.buffer.asUint8List(
          byteData.offsetInBytes,
          byteData.lengthInBytes,
        ),
      );
    }

    return file.path;
  }

  Future<String> _getLocalPath(String path) async {
    return '${(await getApplicationSupportDirectory()).path}/$path';
  }

  Future<Uint8List> getAssetBytes(String asset) async {
    // If the path starts with '/', it's a file path, not an asset
    if (asset.startsWith('/')) {
      final file = File(asset);
      return await file.readAsBytes();
    }

    final bytes = await rootBundle.load(asset);
    return bytes.buffer.asUint8List();
  }
}
