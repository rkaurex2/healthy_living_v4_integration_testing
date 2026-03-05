import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'rating_detail_model.freezed.dart';

@freezed
sealed class RatingDetailModel with _$RatingDetailModel {
  const factory RatingDetailModel({
    required String grade,
    required HazardLevel hazardLevel,
    required bool isVerified,
    bool? isRangeScore,
    KitDetailsModel? kitDetails,
  }) = _RatingDetailModel;
}
