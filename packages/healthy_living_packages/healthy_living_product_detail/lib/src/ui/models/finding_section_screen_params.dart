import 'package:healthy_living_product_detail/src/ui/models/finding_section_params.dart';

class FindingSectionScreenParams {
  final FindingSectionParams findingSectionScreenParams;
  final String score;
  final String title;
  final FindingSectionParams? rightFindingSectionScreenParams;
  final bool isProductCompare;
  final bool isLeftProductVerified;
  final bool isRightProductVerified;

  const FindingSectionScreenParams({
    required this.findingSectionScreenParams,
    required this.score,
    required this.title,
    this.rightFindingSectionScreenParams,
    this.isProductCompare = false,
    this.isLeftProductVerified = false,
    this.isRightProductVerified = false,
  });
}
