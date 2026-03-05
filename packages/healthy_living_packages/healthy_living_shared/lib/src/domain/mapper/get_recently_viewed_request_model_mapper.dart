import 'package:healthy_living_shared/healthy_living_shared.dart'
    show GetHistoryRequestModel;
import 'package:healthy_living_shared/src/data/models/history/get_history_request_dto.dart';

extension GetHistoryRequestModelMapper on GetHistoryRequestModel {
  GetHistoryRequestDTO toDTO() => GetHistoryRequestDTO(
    page: page,
    perPage: perPage,
    historyType: historyType,
  );
}
