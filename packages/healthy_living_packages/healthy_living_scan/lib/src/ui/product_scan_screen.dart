import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_scanner_view.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductScanScreen extends StatelessWidget {
  final CompareProductItem? defaultCompareProductItem;
  const ProductScanScreen({required this.defaultCompareProductItem, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = injector.get<ScanBloc>();
        return bloc;
      },
      child: BarcodeScannerView(
        defaultCompareProductItem: defaultCompareProductItem,
      ),
    );
  }
}
