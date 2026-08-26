// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderProductModel _$$_OrderProductModelFromJson(Map<String, dynamic> json) =>
    _$_OrderProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      unit: json['unit'] as String,
      barcode: json['barcode'] as String,
      rating: (json['rating'] as num).toDouble(),
      thumbnailImage: json['thumbnail_img'] as String,
      currencySymbol: json['currency_symbol'] as String,
    );

Map<String, dynamic> _$$_OrderProductModelToJson(
        _$_OrderProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'unit': instance.unit,
      'barcode': instance.barcode,
      'rating': instance.rating,
      'thumbnail_img': instance.thumbnailImage,
      'currency_symbol': instance.currencySymbol,
    };

_$_OrderDetailsModel _$$_OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailsModel(
      id: (json['id'] as num).toInt(),
      product: json['product'] == null
          ? null
          : OrderProductModel.fromJson(json['product'] as Map<String, dynamic>),
      variation: json['variation'] as String,
      quantity: (json['quantity'] as num).toInt(),
      availableReturnQty: (json['available_return_qty'] as num).toInt(),
      deliveryType: json['delivery_type'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String?,
      isAvailableReview: json['review_is_available'] as bool,
      msgCantReview: json['msg_cant_review'] as String,
      shippedBy: json['shipped_by'] as String?,
      soldByType: json['sold_by_type'] as String,
      soldBy: json['sold_by_name'] as String,
      review: json['review'] == null
          ? null
          : ReviewsModel.fromJson(json['review'] as Map<String, dynamic>),
      pickerNotes: json['picker_notes'] as String?,
      instructions: json['instructions'] as String?,
      insuranceCoveragePercentage:
          json['insurance_coverage_percentage'] as String?,
      cartOptions: (json['options'] as List<dynamic>?)
          ?.map((e) =>
              OrderDetailsOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'shipped_by': instance.shippedBy,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldBy,
      'review': instance.review?.toJson(),
      'picker_notes': instance.pickerNotes,
      'instructions': instance.instructions,
      'insurance_coverage_percentage': instance.insuranceCoveragePercentage,
      'options': instance.cartOptions?.map((e) => e.toJson()).toList(),
    };

_$_OrderDetailsOptionModel _$$_OrderDetailsOptionModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDetailsOptionModel(
      id: (json['id'] as num).toInt(),
      optionId: (json['option_id'] as num?)?.toInt(),
      name: json['name'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) =>
              OrderDetailsOptionValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailsOptionModelToJson(
        _$_OrderDetailsOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option_id': instance.optionId,
      'name': instance.name,
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

_$_OrderDetailsOptionValueModel _$$_OrderDetailsOptionValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDetailsOptionValueModel(
      id: (json['id'] as num).toInt(),
      optionValueId: (json['option_value_id'] as num?)?.toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_OrderDetailsOptionValueModelToJson(
        _$_OrderDetailsOptionValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option_value_id': instance.optionValueId,
      'name': instance.name,
      'price': instance.price,
    };
