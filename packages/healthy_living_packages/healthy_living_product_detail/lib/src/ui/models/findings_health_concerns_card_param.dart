import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsHealthConcernsCardParam {
  final List<FindingsHealthConcernUIModel> healthConcernList;
  final bool isHealthConcernsFoodType;
  final String score;
  final String title;
  final List<FoodDetailPageDetailsModel>? findingsFoodList;
  final bool isProductCompare;
  final List<FindingsHealthConcernUIModel>? rightHealthConcernList;
  final bool isLeftProductVerified;
  final bool isRightProductVerified;

  const FindingsHealthConcernsCardParam({
    required this.healthConcernList,
    required this.isHealthConcernsFoodType,
    required this.score,
    required this.title,
    required this.findingsFoodList,
    required this.isProductCompare,
    required this.rightHealthConcernList,
    required this.isLeftProductVerified,
    required this.isRightProductVerified ,
  });
}
