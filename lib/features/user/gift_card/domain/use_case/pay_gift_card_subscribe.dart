import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';

class PayGiftCardSubscribe implements UseCase<SubscribePaymentDomainModel?, PaySubscribeParams> {

  @override
  Future<SubscribePaymentDomainModel?> call(PaySubscribeParams param) async {
    var result = await getIt.get<GiftCardsRepositories>().payGiftCardSubscribe(param);
    return result.fold(
          (l) => null,
          (r) => r,
    );
  }
} 