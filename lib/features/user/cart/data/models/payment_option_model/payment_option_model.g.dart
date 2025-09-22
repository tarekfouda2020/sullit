// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentOptionModel _$$_PaymentOptionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentOptionModel(
      paymentType: json['payment_type'] as String,
      paymentTypeKey: json['payment_type_key'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      offlinePaymentId: (json['offline_payment_id'] as num).toInt(),
      details: json['details'] as String,
    );

Map<String, dynamic> _$$_PaymentOptionModelToJson(
        _$_PaymentOptionModel instance) =>
    <String, dynamic>{
      'payment_type': instance.paymentType,
      'payment_type_key': instance.paymentTypeKey,
      'image': instance.image,
      'title': instance.title,
      'offline_payment_id': instance.offlinePaymentId,
      'details': instance.details,
    };
