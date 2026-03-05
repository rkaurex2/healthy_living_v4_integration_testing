import 'package:freezed_annotation/freezed_annotation.dart';

part 'substance_model.freezed.dart';

@freezed
sealed class SubstanceModel with _$SubstanceModel {
  const factory SubstanceModel({
    int? id,
  }) = _SubstanceModel;
}