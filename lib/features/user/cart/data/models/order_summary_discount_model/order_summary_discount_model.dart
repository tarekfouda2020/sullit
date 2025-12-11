import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary_discount_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_summary_discount_model.freezed.dart';

part 'order_summary_discount_model.g.dart';

@freezed
class OrderSummaryDiscountModel extends BaseApiModel<OrderSummaryDiscountDomain>
    with _$OrderSummaryDiscountModel {
  const OrderSummaryDiscountModel._();

  @JsonSerializable(explicitToJson: true)
  factory OrderSummaryDiscountModel({
    required String type,
    required String label,
    required String discount,
  }) = _OrderSummaryDiscountModel;

  factory OrderSummaryDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryDiscountModelFromJson(json);

  @override
  OrderSummaryDiscountDomain toDomainModel() {
    return OrderSummaryDiscountDomain(
      type: type,
      label: label,
      discount: discount,
    );
  }
}
