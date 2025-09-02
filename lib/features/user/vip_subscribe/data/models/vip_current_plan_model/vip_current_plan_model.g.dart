// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vip_current_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VipCurrentPlanModel _$$_VipCurrentPlanModelFromJson(
        Map<String, dynamic> json) =>
    _$_VipCurrentPlanModel(
      currentSubscription: json['current_subscription'] == null
          ? null
          : VipSubscribeModel.fromJson(
              json['current_subscription'] as Map<String, dynamic>),
      otherSubscriptions: (json['other_subscriptions'] as List<dynamic>)
          .map((e) => VipSubscribeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VipCurrentPlanModelToJson(
        _$_VipCurrentPlanModel instance) =>
    <String, dynamic>{
      'current_subscription': instance.currentSubscription?.toJson(),
      'other_subscriptions':
          instance.otherSubscriptions.map((e) => e.toJson()).toList(),
    };
