// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerModel _$$_BannerModelFromJson(Map<String, dynamic> json) =>
    _$_BannerModel(
      photo: json['photo'] as String,
      url: json['url'] as String?,
      linkType: json['link_type'] as String,
      value: valueFromJson(json['value']),
    );

Map<String, dynamic> _$$_BannerModelToJson(_$_BannerModel instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'url': instance.url,
      'link_type': instance.linkType,
      'value': valueToJson(instance.value),
    };
