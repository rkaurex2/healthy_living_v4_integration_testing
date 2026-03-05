
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingHealthConcernListParam {
  final FindingsHealthConcernUIModel healthConcernUiModel;
  final FindingsHealthConcernUIModel? rightHealthConcernUiModel;
  final bool isProductCompare;
  final bool isLeftProductVerified;
  final bool isRightProductVerified;

  FindingHealthConcernListParam({
    required this.healthConcernUiModel,
    this.isProductCompare = false,
    this.rightHealthConcernUiModel,
    this.isLeftProductVerified = false,
    this.isRightProductVerified = false,
  });
}
