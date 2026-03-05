import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_labels_model.freezed.dart';

@freezed
sealed class ProductLabelsModel with _$ProductLabelsModel {
  const factory ProductLabelsModel({
    required String? directions,
    required String? ingredients,
    required String? warnings,
  }) = _ProductLabelsModel;
}
