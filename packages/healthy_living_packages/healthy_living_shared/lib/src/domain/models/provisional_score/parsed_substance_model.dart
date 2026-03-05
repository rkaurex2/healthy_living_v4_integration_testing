import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_substance_model.freezed.dart';

@freezed
sealed class ParsedSubstanceModel with _$ParsedSubstanceModel {
  const factory ParsedSubstanceModel({
    required String name,
    required String score,
    required int ingredId,
    required String origText,
    required int substanceId,
    String? ewgVerifiedNotscore,
    String? concerns,
  }) = _ParsedSubstanceModel;
}
