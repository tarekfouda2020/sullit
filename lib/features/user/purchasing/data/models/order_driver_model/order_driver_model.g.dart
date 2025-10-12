// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDriverModel _$$_OrderDriverModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDriverModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      phone: json['phone'] as String,
      workType: json['work_type'] as String,
      avgRate: (json['avg_rate'] as num).toInt(),
    );

Map<String, dynamic> _$$_OrderDriverModelToJson(_$_OrderDriverModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'work_type': instance.workType,
      'avg_rate': instance.avgRate,
    };
