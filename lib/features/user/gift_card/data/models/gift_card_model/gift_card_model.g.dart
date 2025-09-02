// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftCardModel _$$_GiftCardModelFromJson(Map<String, dynamic> json) =>
    _$_GiftCardModel(
      id: json['id'] as int,
      title: json['title'] as String,
      code: json['code'] as String?,
      price: json['price'] as String,
      value: json['value'] as String,
      validateDays: json['validity_days'] as int,
      expiredAt: json['expired_at'] as String?,
      expiredInDays: json['expired_in_days'] as int?,
      isExpired: json['is_expired'] as bool?,
    );

Map<String, dynamic> _$$_GiftCardModelToJson(_$_GiftCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'price': instance.price,
      'value': instance.value,
      'validity_days': instance.validateDays,
      'expired_at': instance.expiredAt,
      'expired_in_days': instance.expiredInDays,
      'is_expired': instance.isExpired,
    };
