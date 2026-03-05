import 'package:healthy_living_scan/src/data/services/mlkit_service.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class BarcodeRepository {
  final MlkitService? mlkitService;

  BarcodeRepository({
    this.mlkitService,
  });

  Future<(List<Barcode>, int)> processImageWithMlkit(String filename) async {
    if (mlkitService == null) {
      return (<Barcode>[], 0);
    }

    final (mlkitBarcodes, elapsedMilliseconds) =
    await mlkitService!.processImageWithTimer(filename);

    return (mlkitBarcodes, elapsedMilliseconds);
  }

  Future<void> dispose() async {
    mlkitService?.dispose();
  }
}
