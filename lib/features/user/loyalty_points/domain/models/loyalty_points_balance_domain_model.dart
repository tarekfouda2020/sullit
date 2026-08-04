import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class LoyaltyPointsBalanceDomainModel extends BaseDomainModel {
  int points;
  String amount;

  LoyaltyPointsBalanceDomainModel({
    required this.points,
    required this.amount,
  });
}
