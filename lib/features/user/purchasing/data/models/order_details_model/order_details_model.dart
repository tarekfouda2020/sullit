import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_model.freezed.dart';

part 'order_details_model.g.dart';

@freezed
@immutable
class OrderDetailsModel extends BaseApiModel<OrderDetails>
    with _$OrderDetailsModel {
  const OrderDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderDetailsModel({
    required int id,
    ProductModel? product,
    required String variation,
    required int quantity,
    @JsonKey(name: 'available_return_qty') required int availableReturnQty,
    @JsonKey(name: 'delivery_type') required String deliveryType,
    required String price,
    String? tax,
    @JsonKey(name: 'review_is_available') required bool isAvailableReview,
    @JsonKey(name: 'msg_cant_review') required String msgCantReview,
    ReviewsModel? review,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  @override
  OrderDetails toDomainModel() {
    return OrderDetails(
      id: id,
      variation: variation,
      quantity: quantity,
      deliveryType: deliveryType,
      price: price,
      availableReturnQty: availableReturnQty,
      isAvailableReview: isAvailableReview,
      msgCantReview: msgCantReview,
      product: product?.toDomainModel(),
      review: review?.toDomainModel(),
      tax: tax,
    );
  }
}
