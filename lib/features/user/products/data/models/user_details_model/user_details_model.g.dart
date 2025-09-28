// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailsModel _$$_UserDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_UserDetailsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      avatarOriginal: json['avatar_original'] as String,
    );

Map<String, dynamic> _$$_UserDetailsModelToJson(_$_UserDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'avatar_original': instance.avatarOriginal,
    };
