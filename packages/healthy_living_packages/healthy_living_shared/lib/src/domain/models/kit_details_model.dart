import 'package:freezed_annotation/freezed_annotation.dart';

part 'kit_details_model.freezed.dart';
part 'kit_details_model.g.dart';

@freezed
sealed class KitDetailsModel with _$KitDetailsModel {
  const factory KitDetailsModel({
    @Default('') String scoreMin,
    @Default('') String scoreMax,
    @Default('') String kitRating,
  }) = _KitDetailsModel;

  factory KitDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$KitDetailsModelFromJson(json);
}