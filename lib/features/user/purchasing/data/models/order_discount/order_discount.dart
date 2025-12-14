import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_discount_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_discount.freezed.dart';

part 'order_discount.g.dart';

@freezed
class OrderDiscount extends BaseApiModel<OrderDiscountDomain>
    with _$OrderDiscount {
  const OrderDiscount._();

  @JsonSerializable(explicitToJson: true)
  factory OrderDiscount({
    required int id,
    required String type,
    required String discount,
    @JsonKey(name: "type_label") required String typeLabel,
    @JsonKey(name: "discount_value") required String discountValue,
  }) = _OrderDiscount;

  factory OrderDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderDiscountFromJson(json);

  @override
  OrderDiscountDomain toDomainModel() {
    return OrderDiscountDomain(
      id: id,
      typeLabel: typeLabel,
      type: type,
      discount: discount,
      discountValue: discountValue,
    );
  }
}
