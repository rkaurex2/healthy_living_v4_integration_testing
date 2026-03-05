import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_detail_request_model.freezed.dart';

@freezed
sealed class CosmeticDetailRequestModel with _$CosmeticDetailRequestModel {
  const factory CosmeticDetailRequestModel({
    required String id,
  }) = _CosmeticDetailRequestModel;
}
