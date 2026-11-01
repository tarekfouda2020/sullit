// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatPayloadModel _$$_AiChatPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatPayloadModel(
      type: json['type'] as String?,
      action: json['action'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => AiChatCartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subTotal: json['sub_total'] as String?,
      calculableTotal: (json['calculable_total'] as num?)?.toDouble(),
      currencySymbol: json['currency_symbol'] as String?,
      returned: (json['returned'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      viewAll: json['view_all'] == null
          ? null
          : AiChatViewAllModel.fromJson(
              json['view_all'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : AiChatProductCardModel.fromJson(
              json['product'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => AiChatProductCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => AiChatShopCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shop: json['shop'] == null
          ? null
          : AiChatShopCardModel.fromJson(json['shop'] as Map<String, dynamic>),
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => AiChatBranchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      deliveryStatus: json['delivery_status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      grandTotal: json['grand_total'] as num?,
      status: json['status'] as String?,
      statusLabel: json['status_label'] as String?,
    );

Map<String, dynamic> _$$_AiChatPayloadModelToJson(
        _$_AiChatPayloadModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'action': instance.action,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'sub_total': instance.subTotal,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
      'returned': instance.returned,
      'total': instance.total,
      'view_all': instance.viewAll?.toJson(),
      'product': instance.product?.toJson(),
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'shops': instance.shops?.map((e) => e.toJson()).toList(),
      'shop': instance.shop?.toJson(),
      'branches': instance.branches?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'code': instance.code,
      'delivery_status': instance.deliveryStatus,
      'payment_status': instance.paymentStatus,
      'grand_total': instance.grandTotal,
      'status': instance.status,
      'status_label': instance.statusLabel,
    };
