import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_status_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/track_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_order.freezed.dart';

part 'track_order.g.dart';

@freezed
class TrackOrder extends BaseApiModel<TrackOrderModel> with _$TrackOrder {
  TrackOrder._();

  @JsonSerializable(explicitToJson: true)
  factory TrackOrder({
    required int id,
    required String code,
    @JsonKey(name: "is_completed") required bool isCompleted,
    @JsonKey(name: "order_type") required String orderType,
    required List<OrderStatus> tracking,
  }) = _TrackOrder;

  factory TrackOrder.fromJson(Map<String, dynamic> json) => _$TrackOrderFromJson(json);

  @override
  TrackOrderModel toDomainModel() {
    return TrackOrderModel(
      id: id,
      code: code,
      isCompleted: isCompleted,
      orderType: orderType,
      tracking: tracking.map((e) => e.toDomainModel()).toList(),
    );
  }
}

@freezed
class OrderStatus extends BaseApiModel<OrderStatusModel> with _$OrderStatus {
  OrderStatus._();

  @JsonSerializable(explicitToJson: true)
  factory OrderStatus({
    required String status,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _OrderStatus;

  factory OrderStatus.fromJson(Map<String, dynamic> json) => _$OrderStatusFromJson(json);

  @override
  OrderStatusModel toDomainModel() {
    return OrderStatusModel(status: status, createdAt: createdAt);
  }
}
