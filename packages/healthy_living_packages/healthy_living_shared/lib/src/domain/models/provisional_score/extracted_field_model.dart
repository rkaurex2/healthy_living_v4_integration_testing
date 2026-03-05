import 'package:freezed_annotation/freezed_annotation.dart';

part 'extracted_field_model.freezed.dart';

@freezed
sealed class ExtractedFieldModel with _$ExtractedFieldModel {
  const factory ExtractedFieldModel({
    required String? value,
    required String? ocrValue,
    required double? confidence,
  }) = _ExtractedFieldModel;
}
