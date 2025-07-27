
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_gift_card_subscribe_params.dart';

abstract class GiftCardsDataSource {


  Future<Either<Failure, List<PayMethodModel>>> getPayMethods();

  Future<Either<Failure, List<GiftCardModel>>> giftCardSubscriptionsList(GenericPaginateParams params);

  Future<Either<Failure, List<GiftCardModel>>> giftCardList(GenericPaginateParams params);

  Future<Either<Failure, GiftCardModel>> giftCardSubscriptionDetails(int params);

  Future<Either<Failure, GiftCardModel>> giftCardDetails(int params);

  Future<Either<Failure, SubscribePaymentModel>> payGiftCardSubscribe(PayGiftCardSubscribeParams params);

}