import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_items_attributes_model.dart';

part 'user_list_request_model.freezed.dart';
part 'user_list_request_model.g.dart';

@freezed
sealed class UserListRequestModel with _$UserListRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserListRequestModel({
    required String name,
    @JsonKey(name: "items_attributes")
    required List<UserListItemsAttributesModel> itemsAttributes,
  }) = _UserListRequestModel;

  factory UserListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserListRequestModelFromJson(json);
}
