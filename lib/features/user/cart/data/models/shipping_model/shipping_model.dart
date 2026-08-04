import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/payment_option_model/payment_option_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_model.freezed.dart';

part 'shipping_model.g.dart';

@freezed
@immutable
class ShippingModel extends BaseApiModel<Shipping> with _$ShippingModel {
  const ShippingModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShippingModel(
      {required ShippingSummaryModel summary,
      @JsonKey(name: "payment_option") List<PaymentOptionModel>? paymentOption,
      @JsonKey(name: "is_admin_discount") bool? isAdminDiscount,
      @JsonKey(name: "discount_rate") int? discountRate}) = _ShippingModel;

  factory ShippingModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingModelFromJson(json);

  @override
  Shipping toDomainModel() {
    return Shipping(
      summary: summary.toDomainModel(),
      paymentOption: paymentOption?.map((e) => e.toDomainModel()).toList(),
      discountRate: discountRate,
      isAdminDiscount: isAdminDiscount,
    );
  }
}
