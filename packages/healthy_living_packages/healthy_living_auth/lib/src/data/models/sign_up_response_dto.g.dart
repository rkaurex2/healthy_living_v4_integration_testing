// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpResponseDTO _$SignUpResponseDTOFromJson(Map<String, dynamic> json) =>
    _SignUpResponseDTO(
      userData:
          json['user_data'] == null
              ? null
              : UserDataDTO.fromJson(json['user_data'] as Map<String, dynamic>),
      revenueCat:
          json['revenuecat'] == null
              ? null
              : AuthRevenueCatResponseDto.fromJson(
                json['revenuecat'] as Map<String, dynamic>,
              ),
      entitlements:
          (json['entitlements'] as List<dynamic>?)
              ?.map(
                (e) =>
                    EntitlementsResponseDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$SignUpResponseDTOToJson(_SignUpResponseDTO instance) =>
    <String, dynamic>{
      'user_data': instance.userData,
      'revenuecat': instance.revenueCat,
      'entitlements': instance.entitlements,
    };
