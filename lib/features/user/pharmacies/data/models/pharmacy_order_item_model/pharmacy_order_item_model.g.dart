// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyOrderItemModel _$$_PharmacyOrderItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyOrderItemModel(
      id: (json['id'] as num?)?.toInt(),
      variation: json['variation'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      soldByType: json['sold_by_type'] as String?,
      soldByName: json['sold_by_name'] as String?,
      availableReturnQty: (json['available_return_qty'] as num?)?.toInt(),
      deliveryType: json['delivery_type'] as String?,
      price: json['price'] as String?,
      tax: json['tax'] as String?,
      vipOfferDiscount: json['vip_offer_discount'] as String?,
      shareholderDiscount: json['shareholder_discount'] as String?,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      reviewIsAvailable: json['review_is_available'] as bool?,
      msgCantReview: json['msg_cant_review'] as String?,
      review: json['review'] == null
          ? null
          : ReviewsModel.fromJson(json['review'] as Map<String, dynamic>),
      shippedBy: json['shipped_by'] as String?,
      pickerNotes: json['picker_notes'] as String?,
    );

Map<String, dynamic> _$$_PharmacyOrderItemModelToJson(
        _$_PharmacyOrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldByName,
      'available_return_qty': instance.availableReturnQty,
      'delivery_type': instance.deliveryType,
      'price': instance.price,
      'tax': instance.tax,
      'vip_offer_discount': instance.vipOfferDiscount,
      'shareholder_discount': instance.shareholderDiscount,
      'product': instance.product?.toJson(),
      'review_is_available': instance.reviewIsAvailable,
      'msg_cant_review': instance.msgCantReview,
      'review': instance.review?.toJson(),
      'shipped_by': instance.shippedBy,
      'picker_notes': instance.pickerNotes,
    };
