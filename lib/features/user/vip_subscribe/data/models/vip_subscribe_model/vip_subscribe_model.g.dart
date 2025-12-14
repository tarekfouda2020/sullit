// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vip_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VipSubscribeModel _$$_VipSubscribeModelFromJson(Map<String, dynamic> json) =>
    _$_VipSubscribeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      duration: json['duration'] as String,
      price: json['price'] as String,
      days: (json['days'] as num).toInt(),
      description: json['description'] as String,
      byInvite: json['by_invite'] as bool?,
      byInviteLabel: json['by_invite_label'] as String?,
      startsAt: json['starts_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      expiredInDays: (json['expired_in_days'] as num?)?.toInt(),
      isExpired: json['is_expired'] as bool?,
      subscription: json['subscription'] == null
          ? null
          : VipSubscribeModel.fromJson(
              json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VipSubscribeModelToJson(
        _$_VipSubscribeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'price': instance.price,
      'days': instance.days,
      'description': instance.description,
      'by_invite': instance.byInvite,
      'by_invite_label': instance.byInviteLabel,
      'starts_at': instance.startsAt,
      'expires_at': instance.expiresAt,
      'expired_in_days': instance.expiredInDays,
      'is_expired': instance.isExpired,
      'subscription': instance.subscription?.toJson(),
    };
