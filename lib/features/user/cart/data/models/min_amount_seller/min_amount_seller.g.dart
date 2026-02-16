// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'min_amount_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinAmountSeller _$$_MinAmountSellerFromJson(Map<String, dynamic> json) =>
    _$_MinAmountSeller(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      message: json['message'] as String,
      minOrderAmount: (json['minimum_order_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MinAmountSellerToJson(_$_MinAmountSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'minimum_order_amount': instance.minOrderAmount,
    };
