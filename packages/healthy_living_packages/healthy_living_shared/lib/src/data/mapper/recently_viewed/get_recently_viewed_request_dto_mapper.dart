import 'package:healthy_living_shared/src/data/models/history/get_history_request_dto.dart';

extension GetHistoryRequestDTOMapper on GetHistoryRequestDTO {
  Map<String, String> toQueryParams() => {
    "history_type": historyType.toString(),
    "page": page.toString(),
    "per_page": perPage.toString(),
  };
}
