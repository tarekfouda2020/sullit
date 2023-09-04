import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/notifications/domain/models/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
@immutable
class NotificationModel extends BaseApiModel<NotificationDomainModel>
    with _$NotificationModel {
  const NotificationModel._();

  @JsonSerializable(explicitToJson: true)
  const factory NotificationModel({
    required String id,
    @JsonKey(name: 'order_id') required int orderId,
    required String text,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  @override
  NotificationDomainModel toDomainModel() {
    return NotificationDomainModel(
      id: id,
      orderId: orderId,
      text: text,
      createdAt: createdAt,
    );
  }
}
