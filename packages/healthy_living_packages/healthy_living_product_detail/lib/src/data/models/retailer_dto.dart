import 'package:freezed_annotation/freezed_annotation.dart';

part 'retailer_dto.freezed.dart';
part 'retailer_dto.g.dart';

@freezed
sealed class RetailerDTO with _$RetailerDTO {
  const factory RetailerDTO({required String url, String? name, String? type}) =
      _RetailerDTO;

  factory RetailerDTO.fromJson(Map<String, dynamic> json) =>
      _$RetailerDTOFromJson(json);
}
