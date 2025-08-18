import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_model.freezed.dart';

part 'summary_model.g.dart';

@freezed
@immutable
class SummaryModel extends BaseApiModel<Summary> with _$SummaryModel {
  const SummaryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SummaryModel(
      {@JsonKey(name: 'order_date') required String orderDate,
      required String name,
      required String email,
      @JsonKey(name: 'shipping_address') required String shippingAddress,
      @JsonKey(name: 'order_status') required String orderStatus,
      @JsonKey(name: 'total_order_amount') required String totalOrderAmount,
      required String shipping,
      @JsonKey(name: "payment_method") required String paymentMethod}) = _SummaryModel;

  factory SummaryModel.fromJson(Map<String, dynamic> json) => _$SummaryModelFromJson(json);

  @override
  Summary toDomainModel() {
    return Summary(
      orderDate: orderDate,
      name: name,
      email: email,
      shippingAddress: shippingAddress,
      orderStatus: orderStatus,
      totalOrderAmount: totalOrderAmount,
      shipping: shipping,
      paymentMethod: paymentMethod,
    );
  }
}
