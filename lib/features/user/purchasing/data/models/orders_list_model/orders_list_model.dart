import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders_list_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_list_model.freezed.dart';
part 'orders_list_model.g.dart';

@freezed
@immutable
class OrdersListModel extends BaseApiModel<OrdersListDomainModel> with _$OrdersListModel {
  const OrdersListModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrdersListModel({
    required int id,
    required String code,
    @JsonKey(name: 'shop_type') required String shopType,
    @JsonKey(name: 'is_pending_review') required bool isPendingReview,
    @JsonKey(name: 'awaiting_customer_completion') required bool awaitingCustomerCompletion,
    @JsonKey(name: 'requires_prescription_review') required bool requiresPrescriptionReview,
    @JsonKey(name: 'insurance_applied') required bool insuranceApplied,
    @JsonKey(name: 'order_type') required String orderType,
    @JsonKey(name: 'delivery_status_const') required String deliveryStatusConst,
    @JsonKey(name: 'delivery_status') required String deliveryStatus,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldByName,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'order_date') required String orderDate,
    @JsonKey(name: 'payment_status') required bool paymentStatus,
    @JsonKey(name: 'payment_status_text') required String paymentStatusText,
    @JsonKey(name: 'payment_status_viewed') required bool paymentStatusViewed,
    required String total,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'payment_method_key') required String paymentMethodKey,
    @JsonKey(name: 'shipping_type') required String shippingType,
  }) = _OrdersListModel;

  factory OrdersListModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersListModelFromJson(json);

  @override
  OrdersListDomainModel toDomainModel() {
    return OrdersListDomainModel(
      id: id,
      code: code,
      shopType: shopType,
      isPendingReview: isPendingReview,
      awaitingCustomerCompletion: awaitingCustomerCompletion,
      requiresPrescriptionReview: requiresPrescriptionReview,
      insuranceApplied: insuranceApplied,
      orderType: orderType,
      deliveryStatusConst: deliveryStatusConst,
      deliveryStatus: deliveryStatus,
      soldByType: soldByType,
      soldByName: soldByName,
      orderStatus: orderStatus,
      orderDate: orderDate,
      paymentStatus: paymentStatus,
      paymentStatusText: paymentStatusText,
      paymentStatusViewed: paymentStatusViewed,
      total: total,
      paymentMethod: paymentMethod,
      paymentMethodKey: paymentMethodKey,
      shippingType: shippingType,
    );
  }
}
