// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instore_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstoreCartModel _$$_InstoreCartModelFromJson(Map<String, dynamic> json) =>
    _$_InstoreCartModel(
      sellerId: (json['seller_id'] as num).toInt(),
      sellerName: json['seller_name'] as String? ?? '',
      subTotal: json['sub_total'] as num,
      items: (json['items'] as List<dynamic>)
          .map((e) => InstoreCartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InstoreCartModelToJson(_$_InstoreCartModel instance) =>
    <String, dynamic>{
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'sub_total': instance.subTotal,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
