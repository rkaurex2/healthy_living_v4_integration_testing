import 'dart:convert';

import 'package:healthy_living_shared/healthy_living_shared.dart';

class ScanScreenParams {
  final CompareProductItem? defaultCompareProductItem;

  const ScanScreenParams({this.defaultCompareProductItem});

  Map<String, String> toExtraParameters() => {
    'defaultCompareProductItem': jsonEncode(defaultCompareProductItem),
  };

  static ScanScreenParams fromExtraParameters(Map<String, String> params) {
    return ScanScreenParams(
      defaultCompareProductItem: jsonDecode(
        params["defaultCompareProductItem"] ?? "",
      ),
    );
  }
}
