import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vip_subscribe_model.freezed.dart';

part 'vip_subscribe_model.g.dart';

@freezed
class VipSubscribeModel extends BaseApiModel<VipSubscribeDomainModel> with _$VipSubscribeModel {
  const VipSubscribeModel._();

  /// nullable variables return in the current subscription only
  @JsonSerializable(explicitToJson: true)
  factory VipSubscribeModel(
      {required int id,
      required String name,
      required String duration,
      required String price,
      required int days,
      required String description,
        @JsonKey(name: "by_invite") required bool byInvite,
        @JsonKey(name: "by_invite_label") required  String byInviteLabel,
        @JsonKey(name: "starts_at")  String? startsAt,
        @JsonKey(name: "expires_at")  String? expiresAt,
        @JsonKey(name: "expired_in_days")  int? expiredInDays,
        @JsonKey(name: "is_expired")  bool? isExpired,
        @JsonKey(name: "subscription")  VipSubscribeModel? subscription,
        /// in subscription key the nullable variables dose not return
      }) = _VipSubscribeModel;

  factory VipSubscribeModel.fromJson(Map<String, dynamic> json) => _$VipSubscribeModelFromJson(json);

  @override
  VipSubscribeDomainModel toDomainModel() {
    return VipSubscribeDomainModel(
      id: id,
      name: name,
      duration: duration,
      price: price,
      days: days,
      description: description,
      subscription: subscription?.toDomainModel(),
      expiredInDays: expiredInDays,
      expiresAt: expiresAt,
      isExpired: isExpired,
      startsAt: startsAt,
      byInvite:byInvite ,
      inviteLabel: byInviteLabel,
    );
  }
}
