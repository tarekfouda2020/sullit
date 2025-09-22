// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletTypesModel _$$_WalletTypesModelFromJson(Map<String, dynamic> json) =>
    _$_WalletTypesModel(
      paymentType: json['payment_type'] as String,
      paymentTypeKey: json['payment_type_key'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      offlinePaymentId: (json['offline_payment_id'] as num).toInt(),
      details: json['details'] as String,
    );

Map<String, dynamic> _$$_WalletTypesModelToJson(_$_WalletTypesModel instance) =>
    <String, dynamic>{
      'payment_type': instance.paymentType,
      'payment_type_key': instance.paymentTypeKey,
      'image': instance.image,
      'name': instance.name,
      'title': instance.title,
      'offline_payment_id': instance.offlinePaymentId,
      'details': instance.details,
    };
