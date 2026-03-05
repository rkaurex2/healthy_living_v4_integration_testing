// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInResponseDTO _$SignInResponseDTOFromJson(Map<String, dynamic> json) =>
    _SignInResponseDTO(
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

Map<String, dynamic> _$SignInResponseDTOToJson(_SignInResponseDTO instance) =>
    <String, dynamic>{
      'user_data': instance.userData,
      'revenuecat': instance.revenueCat,
      'entitlements': instance.entitlements,
    };
