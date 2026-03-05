import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_add_to_list_result.freezed.dart';

@freezed
sealed class ProductAddToListResult with _$ProductAddToListResult {
  const factory ProductAddToListResult({
    required String message,
    @JsonKey(name: 'list_id') required int listId,
  }) = _ProductAddToListResult;
}
