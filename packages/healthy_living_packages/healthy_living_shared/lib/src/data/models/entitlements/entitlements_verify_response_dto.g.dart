// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlements_verify_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntitlementsVerifyResponseDto _$EntitlementsVerifyResponseDtoFromJson(
  Map<String, dynamic> json,
) => _EntitlementsVerifyResponseDto(
  userData:
      json['user'] == null
          ? null
          : UserDataDTO.fromJson(json['user'] as Map<String, dynamic>),
  revenueCat:
      json['revenuecat'] == null
          ? null
          : AuthRevenueCatResponseDto.fromJson(
            json['revenuecat'] as Map<String, dynamic>,
          ),
  entitlements:
      (json['entitlements'] as List<dynamic>?)
          ?.map(
            (e) => EntitlementsResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$EntitlementsVerifyResponseDtoToJson(
  _EntitlementsVerifyResponseDto instance,
) => <String, dynamic>{
  'user': instance.userData,
  'revenuecat': instance.revenueCat,
  'entitlements': instance.entitlements,
};
