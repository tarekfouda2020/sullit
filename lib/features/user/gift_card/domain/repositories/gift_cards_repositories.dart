

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';

abstract class GiftCardsRepositories {

  Future<Either<Failure, List<PayMethodDomainModel>>> getPayMethods();

  Future<Either<Failure, List<GiftCardDomainModel>>> giftCardSubscriptionsList(GenericPaginateParams params);

  Future<Either<Failure, List<GiftCardDomainModel>>> giftCardList(GenericPaginateParams params);

  Future<Either<Failure, GiftCardDomainModel>> giftCardSubscriptionDetails(int params);

  Future<Either<Failure, GiftCardDomainModel>> giftCardDetails(int params);

  Future<Either<Failure, SubscribePaymentDomainModel>> payGiftCardSubscribe(PaySubscribeParams params);

}