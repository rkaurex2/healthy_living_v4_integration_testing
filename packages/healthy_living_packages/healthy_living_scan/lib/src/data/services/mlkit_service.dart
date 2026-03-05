import 'dart:async';

import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MlkitService {
  final BarcodeScanner _scanner;

  MlkitService({
    BarcodeScanner? scanner,
  })  : _scanner = scanner ??
            // all formats: Code 128, Code 39, Code 93, CodaBar, Data Matrix, EAN-13, EAN-8, ITF (Interleaved Two-of-Five), QR Code, UPC-A, UPC-E, PDF-417, and AZTEC
            BarcodeScanner(formats: [
              BarcodeFormat.ean13,
              BarcodeFormat.upca,
              BarcodeFormat.upce,
              BarcodeFormat.ean8,
              BarcodeFormat.code128,
              BarcodeFormat.code39,
              BarcodeFormat.code93,
            ],);

  Future<(List<Barcode>, int)> processImageWithTimer(String filename) async {
    final filepath = await getAssetPath(filename);
    final inputImage = InputImage.fromFilePath(filepath);

    final stopwatch = Stopwatch()..start();
    final List<Barcode> barcodes = await _scanner.processImage(inputImage);
    stopwatch.stop();

    return (barcodes, stopwatch.elapsedMilliseconds);
  }

  Future<List<Barcode>> processImage(String filename) async {
    final filepath = await getAssetPath(filename);
    final inputImage = InputImage.fromFilePath(filepath);

    return _scanner.processImage(inputImage);
  }

  Future<List<Barcode>> processInputImage(InputImage inputImage) async {
    return _scanner.processImage(inputImage);
  }

  void dispose() {
    _scanner.close();
  }
}
