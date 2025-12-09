import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_discount_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_discount_model.freezed.dart';

part 'order_discount_model.g.dart';

@freezed
class OrderDiscountModel extends BaseApiModel<OrderDiscountDomain> with _$OrderDiscountModel {
  const OrderDiscountModel._();
  @JsonSerializable(explicitToJson: true)
  factory OrderDiscountModel({
    required String type,
    required String label,
    required String discount,
  }) = _OrderDiscountModel;

  factory OrderDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDiscountModelFromJson(json);

  @override
  OrderDiscountDomain toDomainModel() {
    return OrderDiscountDomain(
      label: label,
      type: type,
      discount: discount,
    );
  }
}
