import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/summary_model/summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_summary_model.freezed.dart';
part 'order_summary_model.g.dart';

@freezed
@immutable
class OrderSummaryModel extends BaseApiModel<OrderSummary>
    with _$OrderSummaryModel {
  const OrderSummaryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderSummaryModel(
          {@JsonKey(name: 'order_summary') SummaryModel? orderSummary,
          @JsonKey(name: 'section_orders') List<OrderModel>? sectionOrders,
          @JsonKey(name: 'transaction_url') String? transactionUrl}) =
      _OrderSummaryModel;

  factory OrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryModelFromJson(json);

  @override
  OrderSummary toDomainModel() {
    return OrderSummary(
      transactionUrl: transactionUrl,
      summary: orderSummary?.toDomainModel(),
      sectionOrders: (sectionOrders ?? <OrderModel>[])
          .map((e) => e.toDomainModel())
          .toList(),
    );
  }
}
