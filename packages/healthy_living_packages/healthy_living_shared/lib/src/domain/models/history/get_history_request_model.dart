import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_history_request_model.freezed.dart';

@freezed
sealed class GetHistoryRequestModel
    with _$GetHistoryRequestModel {
  const factory GetHistoryRequestModel({
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'history_type') required String historyType,
  }) = _GetHistoryRequestModel;
}
