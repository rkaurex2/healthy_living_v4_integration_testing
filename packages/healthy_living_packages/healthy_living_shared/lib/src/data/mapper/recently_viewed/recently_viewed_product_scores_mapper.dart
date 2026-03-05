import 'package:healthy_living_shared/src/data/models/history/history_product_scores_dto.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_product_scores_model.dart';

extension RecentlyViewedProductScoresDTOMapper
on HistoryProductScoresDTO {
  HistoryProductScoresModel toDomain() {
    return HistoryProductScoresModel(overall: overall);
  }
}