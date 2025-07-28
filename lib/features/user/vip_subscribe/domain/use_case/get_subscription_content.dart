import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/subscribe_content_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';

class GetSubscriptionContent implements UseCase<SubscribeContentDomainModel?, NoParams> {

  @override
  Future<SubscribeContentDomainModel?> call(NoParams param) async {
    var result = await getIt.get<VipRepositories>().getSubscriptionContent();
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
} 