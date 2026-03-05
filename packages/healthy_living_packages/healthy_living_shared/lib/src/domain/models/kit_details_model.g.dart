// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kit_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KitDetailsModel _$KitDetailsModelFromJson(Map<String, dynamic> json) =>
    _KitDetailsModel(
      scoreMin: json['scoreMin'] as String? ?? '',
      scoreMax: json['scoreMax'] as String? ?? '',
      kitRating: json['kitRating'] as String? ?? '',
    );

Map<String, dynamic> _$KitDetailsModelToJson(_KitDetailsModel instance) =>
    <String, dynamic>{
      'scoreMin': instance.scoreMin,
      'scoreMax': instance.scoreMax,
      'kitRating': instance.kitRating,
    };
