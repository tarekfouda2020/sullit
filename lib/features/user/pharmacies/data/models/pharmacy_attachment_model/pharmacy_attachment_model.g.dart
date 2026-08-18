// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyAttachmentModel _$$_PharmacyAttachmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyAttachmentModel(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_PharmacyAttachmentModelToJson(
        _$_PharmacyAttachmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
    };
