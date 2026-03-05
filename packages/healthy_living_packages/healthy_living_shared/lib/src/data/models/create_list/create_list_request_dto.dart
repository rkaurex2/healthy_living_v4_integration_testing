import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_list_request_dto.freezed.dart';
part 'create_list_request_dto.g.dart';

@freezed
sealed class CreateListRequestModel with _$CreateListRequestModel {
  const factory CreateListRequestModel({required String name}) =
      _CreateListRequestModel;

  factory CreateListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateListRequestModelFromJson(json);
}
