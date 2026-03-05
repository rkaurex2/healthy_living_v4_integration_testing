import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_items_attributes_model.freezed.dart';
part 'user_list_items_attributes_model.g.dart';

@freezed
sealed class UserListItemsAttributesModel with _$UserListItemsAttributesModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserListItemsAttributesModel({
    @JsonKey(name: "product_type") required String productType,
    @JsonKey(name: "product_id") required int productId,
    @Default(false) @JsonKey(name: "_destroy") bool destroy,
  }) = _UserListItemsAttributesModel;

  factory UserListItemsAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$UserListItemsAttributesModelFromJson(json);
}
