import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart';

class GetGiftCardDetails implements UseCase<GiftCardDomainModel?, int> {
  @override
  Future<GiftCardDomainModel?> call(int param) async {
    var result =
        await getIt.get<GiftCardsRepositories>().giftCardDetails(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
