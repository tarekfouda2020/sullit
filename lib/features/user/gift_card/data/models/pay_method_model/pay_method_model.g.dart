// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayMethodModel _$$_PayMethodModelFromJson(Map<String, dynamic> json) =>
    _$_PayMethodModel(
      paymentType: json['payment_type'] as String,
      paymentTypeKey: json['payment_type_key'] as String,
      offlinePaymentId: json['offline_payment_id'] as int,
      image: json['image'] as String,
      details: json['details'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_PayMethodModelToJson(_$_PayMethodModel instance) =>
    <String, dynamic>{
      'payment_type': instance.paymentType,
      'payment_type_key': instance.paymentTypeKey,
      'offline_payment_id': instance.offlinePaymentId,
      'image': instance.image,
      'details': instance.details,
      'name': instance.name,
      'title': instance.title,
    };
