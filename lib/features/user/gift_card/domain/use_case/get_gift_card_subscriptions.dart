import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart';

class GetUserGiftCards
    implements UseCase<List<GiftCardDomainModel>, GenericPaginateParams> {
  @override
  Future<List<GiftCardDomainModel>> call(GenericPaginateParams param) async {
    var result = await getIt
        .get<GiftCardsRepositories>()
        .giftCardSubscriptionsList(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
