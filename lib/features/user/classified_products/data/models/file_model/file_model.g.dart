// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileModel _$$_FileModelFromJson(Map<String, dynamic> json) => _$_FileModel(
      id: (json['id'] as num).toInt(),
      fileOriginalName: json['file_original_name'] as String,
      fileName: json['file_name'] as String,
      url: json['url'] as String,
      fileSize: (json['file_size'] as num).toInt(),
      extension: json['extension'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_FileModelToJson(_$_FileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_original_name': instance.fileOriginalName,
      'file_name': instance.fileName,
      'url': instance.url,
      'file_size': instance.fileSize,
      'extension': instance.extension,
      'type': instance.type,
    };
