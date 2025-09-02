import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart';

class GetLoyaltyPointsBalance implements UseCase<LoyaltyPointsBalanceDomainModel?, bool> {
  @override
  Future<LoyaltyPointsBalanceDomainModel?> call(bool param) async {
    var result = await getIt<LoyaltyPointsRepository>().getLoyaltyPointsBalance(param);
    return result.fold(
          (l) => null,
          (r) => r,
    );
  }
}