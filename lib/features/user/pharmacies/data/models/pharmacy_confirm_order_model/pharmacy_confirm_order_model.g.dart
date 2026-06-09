// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_confirm_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyConfirmOrderModel _$$_PharmacyConfirmOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyConfirmOrderModel(
      id: (json['id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      variation: json['variation'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      availableReturnQty: (json['available_return_qty'] as num?)?.toInt(),
      deliveryType: json['delivery_type'] as String?,
      price: json['price'] as String?,
      tax: json['tax'] as String?,
      isAvailableReview: json['review_is_available'] as bool?,
      msgCantReview: json['msg_cant_review'] as String?,
      shippedBy: json['shipped_by'] as String?,
      soldByType: json['sold_by_type'] as String?,
      soldBy: json['sold_by_name'] as String?,
      review: json['review'] == null
          ? null
          : ReviewsModel.fromJson(json['review'] as Map<String, dynamic>),
      transactionUrl: json['transaction_url'] as String?,
    );

Map<String, dynamic> _$$_PharmacyConfirmOrderModelToJson(
        _$_PharmacyConfirmOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product?.toJson(),
      'variation': instance.variation,
      'quantity': instance.quantity,
      'available_return_qty': instance.availableReturnQty,
      'delivery_type': instance.deliveryType,
      'price': instance.price,
      'tax': instance.tax,
      'review_is_available': instance.isAvailableReview,
      'msg_cant_review': instance.msgCantReview,
      'shipped_by': instance.shippedBy,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldBy,
      'review': instance.review?.toJson(),
      'transaction_url': instance.transactionUrl,
    };
