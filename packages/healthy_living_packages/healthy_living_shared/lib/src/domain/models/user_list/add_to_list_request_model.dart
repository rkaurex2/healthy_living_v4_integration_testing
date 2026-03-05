import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';

part 'add_to_list_request_model.freezed.dart';
part 'add_to_list_request_model.g.dart';

@freezed
sealed class AddToListRequestModel with _$AddToListRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory AddToListRequestModel({
    @JsonKey(name: "user_list") required UserListRequestModel userList,
  }) = _AddToListRequestModel;

  factory AddToListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddToListRequestModelFromJson(json);
}
