// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_prescription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedPrescriptionApiModel _$$_SavedPrescriptionApiModelFromJson(
        Map<String, dynamic> json) =>
    _$_SavedPrescriptionApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
      type: json['type'] as String,
      extension: json['extension'] as String,
      createdAt: json['created_at'] as String,
      lastUsedAt: json['last_used_at'] as String,
    );

Map<String, dynamic> _$$_SavedPrescriptionApiModelToJson(
        _$_SavedPrescriptionApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'type': instance.type,
      'extension': instance.extension,
      'created_at': instance.createdAt,
      'last_used_at': instance.lastUsedAt,
    };
