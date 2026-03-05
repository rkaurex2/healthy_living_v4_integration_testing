
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HealthConcernListItemParam {
  final bool isHealthConcernsFoodType;
  final bool isProductCompare;
  final FindingsHealthConcernUIModel leftHealthConcernUIModel;
  final FindingsHealthConcernUIModel? rightHealthConcernUIModel;
  final bool? isLeftProductVerified;
  final bool? isRightProductVerified;

  const HealthConcernListItemParam({
    required this.isHealthConcernsFoodType,
    required this.isProductCompare,
    required this.leftHealthConcernUIModel,
    this.isLeftProductVerified = false,
    this.isRightProductVerified = false,
    this.rightHealthConcernUIModel,
  });
}
