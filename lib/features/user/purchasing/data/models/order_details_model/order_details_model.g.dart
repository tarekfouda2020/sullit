// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsModel _$$_OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailsModel(
      id: json['id'] as int,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      variation: json['variation'] as String,
      quantity: json['quantity'] as int,
      availableReturnQty: json['available_return_qty'] as int,
      deliveryType: json['delivery_type'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String?,
      isAvailableReview: json['review_is_available'] as bool,
      msgCantReview: json['msg_cant_review'] as String,
      review: json['review'] == null
          ? null
          : ReviewsModel.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderDetailsModelToJson(
        _$_OrderDetailsModel instance) =>
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
      'review': instance.review?.toJson(),
    };
