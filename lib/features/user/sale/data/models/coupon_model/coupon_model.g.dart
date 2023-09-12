// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponModel _$$_CouponModelFromJson(Map<String, dynamic> json) =>
    _$_CouponModel(
      id: json['id'] as int,
      code: json['code'] as String,
      icon: json['icon'] as String,
      couponUsagesCount: json['coupon_usages_count'] as int,
    );

Map<String, dynamic> _$$_CouponModelToJson(_$_CouponModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'icon': instance.icon,
      'coupon_usages_count': instance.couponUsagesCount,
    };
