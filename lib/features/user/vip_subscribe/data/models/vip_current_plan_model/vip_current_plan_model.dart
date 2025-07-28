import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_subscribe_model/vip_subscribe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vip_current_plan_model.freezed.dart';
part 'vip_current_plan_model.g.dart';

@freezed
class VipCurrentPlanModel extends BaseApiModel<VipCurrentPlanDomainModel> with _$VipCurrentPlanModel {
  const VipCurrentPlanModel._();

  @JsonSerializable(explicitToJson: true)
  factory VipCurrentPlanModel({
    /// can be null if user is not subscribed in any plan
    @JsonKey(name: "current_subscription") required VipSubscribeModel? currentSubscription,
    @JsonKey(name: "other_subscriptions") required List<VipSubscribeModel> otherSubscriptions,
  }) = _VipCurrentPlanModel;

  factory VipCurrentPlanModel.fromJson(Map<String, dynamic> json) => _$VipCurrentPlanModelFromJson(json);

  @override
  VipCurrentPlanDomainModel toDomainModel() {
    return VipCurrentPlanDomainModel(
      currentSubscription: currentSubscription?.toDomainModel(),
      otherSubscriptions: otherSubscriptions.map((model) => model.toDomainModel()).toList(),
    );
  }
} 