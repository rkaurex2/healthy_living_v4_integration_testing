// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponseDTO _$SearchResponseDTOFromJson(Map<String, dynamic> json) =>
    _SearchResponseDTO(
      cleaners:
          json['cleaners'] == null
              ? null
              : SearchCleanersResponseDTO.fromJson(
                json['cleaners'] as Map<String, dynamic>,
              ),
      skindeep:
          json['skindeep'] == null
              ? null
              : SearchSkinDeepResponseDTO.fromJson(
                json['skindeep'] as Map<String, dynamic>,
              ),
      sunscreens:
          json['sunscreens'] == null
              ? null
              : SearchSunscreenResponseDTO.fromJson(
                json['sunscreens'] as Map<String, dynamic>,
              ),
      foodscores:
          json['foodscores'] == null
              ? null
              : SearchFoodResponseDTO.fromJson(
                json['foodscores'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$SearchResponseDTOToJson(_SearchResponseDTO instance) =>
    <String, dynamic>{
      'cleaners': instance.cleaners,
      'skindeep': instance.skindeep,
      'sunscreens': instance.sunscreens,
      'foodscores': instance.foodscores,
    };
