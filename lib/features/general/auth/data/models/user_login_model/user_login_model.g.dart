// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginModel _$$_UserLoginModelFromJson(Map<String, dynamic> json) =>
    _$_UserLoginModel(
      key: json['key'] as String,
      msg: json['msg'] as String,
      data: const UserDataConverter().fromJson(json['data']),
    );

Map<String, dynamic> _$$_UserLoginModelToJson(_$_UserLoginModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'data': const UserDataConverter().toJson(instance.data),
    };
