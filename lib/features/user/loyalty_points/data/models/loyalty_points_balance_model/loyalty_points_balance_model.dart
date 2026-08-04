import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_points_balance_model.freezed.dart';
part 'loyalty_points_balance_model.g.dart';

@freezed
class LoyaltyPointsBalanceModel
    extends BaseApiModel<LoyaltyPointsBalanceDomainModel>
    with _$LoyaltyPointsBalanceModel {
  const LoyaltyPointsBalanceModel._();
  @JsonSerializable(explicitToJson: true)
  factory LoyaltyPointsBalanceModel({
    required int points,
    required String amount,
  }) = _LoyaltyPointsBalanceModel;

  factory LoyaltyPointsBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyPointsBalanceModelFromJson(json);

  @override
  LoyaltyPointsBalanceDomainModel toDomainModel() {
    return LoyaltyPointsBalanceDomainModel(points: points, amount: amount);
  }
}
