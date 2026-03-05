import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleaner_detail_request_model.freezed.dart';

@freezed
sealed class CleanerDetailRequestModel with _$CleanerDetailRequestModel {
  const factory CleanerDetailRequestModel({
    required String id,
  }) = _CleanerDetailRequestModel;
}
