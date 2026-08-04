import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';

class VipCurrentPlanDomainModel extends BaseDomainModel {
  /// can be null if user is not subscribed in any plan
  final VipSubscribeDomainModel? currentSubscription;
  final List<VipSubscribeDomainModel> otherSubscriptions;

  VipCurrentPlanDomainModel({
    required this.currentSubscription,
    required this.otherSubscriptions,
  });
}
