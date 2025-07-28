import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';

class GetMembershipPayMethods implements UseCase<List<PayMethodDomainModel>, NoParams> {

  @override
  Future<List<PayMethodDomainModel>> call(NoParams param) async {
    var result = await getIt.get<VipRepositories>().getPayMethods();
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
} 