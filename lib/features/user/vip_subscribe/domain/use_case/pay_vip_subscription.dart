import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';

class PayVipSubscription implements UseCase<SubscribePaymentDomainModel?, PaySubscribeParams> {

  @override
  Future<SubscribePaymentDomainModel?> call(PaySubscribeParams param) async {
    var result = await getIt.get<VipRepositories>().paySubscription(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
} 