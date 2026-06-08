import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';

class GetCurrentSubscription
    implements UseCase<VipCurrentPlanDomainModel?, bool> {
  @override
  Future<VipCurrentPlanDomainModel?> call(bool param) async {
    var result =
        await getIt.get<VipRepositories>().getCurrentSubscription(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
