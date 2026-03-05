import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

Future<String> getAssetPath(String asset) async {
  // If the path starts with '/', it's a file path, not an asset
  if (asset.startsWith('/')) {
    return asset;
  }

  final path = await getLocalPath(asset);

  await Directory(dirname(path)).create(recursive: true);

  final file = File(path);

  if (!await file.exists()) {
    final byteData = await rootBundle.load(asset);
    await file.writeAsBytes(
      byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      ),
    );
  }

  return file.path;
}

Future<String> getLocalPath(String path) async {
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
