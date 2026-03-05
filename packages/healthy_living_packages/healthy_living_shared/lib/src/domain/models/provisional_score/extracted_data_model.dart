import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/extracted_field_model.dart';

part 'extracted_data_model.freezed.dart';

@freezed
sealed class ExtractedDataModel with _$ExtractedDataModel {
  const factory ExtractedDataModel({
    required ExtractedFieldModel? productName,
    required ExtractedFieldModel? brandName,
    required ExtractedFieldModel? ingredients,
  }) = _ExtractedDataModel;
}
