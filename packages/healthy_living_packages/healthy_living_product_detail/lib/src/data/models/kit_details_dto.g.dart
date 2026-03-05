// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kit_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KitDetailsDTO _$KitDetailsDTOFromJson(Map<String, dynamic> json) =>
    _KitDetailsDTO(
      scoreMin: json['scoreMin'] as String? ?? '',
      scoreMax: json['scoreMax'] as String? ?? '',
      kitRating: json['kitRating'] as String? ?? '',
    );

Map<String, dynamic> _$KitDetailsDTOToJson(_KitDetailsDTO instance) =>
    <String, dynamic>{
      'scoreMin': instance.scoreMin,
      'scoreMax': instance.scoreMax,
      'kitRating': instance.kitRating,
    };
