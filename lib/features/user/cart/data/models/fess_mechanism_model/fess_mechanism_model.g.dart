// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fess_mechanism_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FessMechanismModel _$$_FessMechanismModelFromJson(
        Map<String, dynamic> json) =>
    _$_FessMechanismModel(
      title: json['title'] as String,
      delivery: FessModel.fromJson(json['delivery'] as Map<String, dynamic>),
      service: FessModel.fromJson(json['service'] as Map<String, dynamic>),
      technology:
          FessModel.fromJson(json['technology'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FessMechanismModelToJson(
        _$_FessMechanismModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'delivery': instance.delivery.toJson(),
      'service': instance.service.toJson(),
      'technology': instance.technology.toJson(),
    };

_$_FessModel _$$_FessModelFromJson(Map<String, dynamic> json) => _$_FessModel(
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_FessModelToJson(_$_FessModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
    };
