import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_compare_request_model.freezed.dart';

@freezed
sealed class ProductCompareRequestModel with _$ProductCompareRequestModel {
  const ProductCompareRequestModel._();

  const factory ProductCompareRequestModel({
    required List<String> ids,
    @JsonKey(name: 'product_type') required String productType,
  }) = _ProductCompareRequestModel;

  Map<String, String> toBaseQueryParams() {
    return {'product_type': productType};
  }

  String toQueryString({Map<String, String>? extraParams}) {
    final allParams = {...?extraParams, ...toBaseQueryParams()}
      ..removeWhere((_, value) => value.isEmpty);

    final baseQuery = allParams.entries
        .map((e) => '${e.key}=${Uri.encodeComponent(e.value)}')
        .join('&');

    final idsQuery = ids
        .map((id) => 'ids[]=${Uri.encodeComponent(id)}')
        .join('&');

    if (baseQuery.isEmpty) return idsQuery;
    if (idsQuery.isEmpty) return baseQuery;
    return '$baseQuery&$idsQuery';
  }
}
