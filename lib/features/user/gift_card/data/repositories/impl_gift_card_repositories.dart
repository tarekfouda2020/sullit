
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/data_source/gift_cards_data_source.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GiftCardsRepositories)
class ImplGiftCardRepositories extends GiftCardsRepositories  with ModelToDomain {
  var dataSource = getIt<GiftCardsDataSource>();

  @override
  Future<Either<Failure, List<PayMethodDomainModel>>> getPayMethods() async{
    var result = await dataSource.getPayMethods();
   return toDomainResultList<PayMethodDomainModel,PayMethodModel>(result);
  }

  @override
  Future<Either<Failure, List<GiftCardDomainModel>>> giftCardSubscriptionsList(GenericPaginateParams params) async{
    var result = await dataSource.giftCardSubscriptionsList(params);
   return toDomainResultList<GiftCardDomainModel,GiftCardModel>(result);
  }

  @override
  Future<Either<Failure, List<GiftCardDomainModel>>> giftCardList(GenericPaginateParams params) async{
    var result = await dataSource.giftCardList(params);
   return toDomainResultList<GiftCardDomainModel,GiftCardModel>(result);
  }

  @override
  Future<Either<Failure, GiftCardDomainModel>> giftCardSubscriptionDetails(int params) async{
    var result = await dataSource.giftCardSubscriptionDetails(params);
   return toDomainResult<GiftCardDomainModel,GiftCardModel>(result);
  }

  @override
  Future<Either<Failure, GiftCardDomainModel>> giftCardDetails(int params) async{
    var result = await dataSource.giftCardDetails(params);
   return toDomainResult<GiftCardDomainModel,GiftCardModel>(result);
  }

  @override
  Future<Either<Failure, SubscribePaymentDomainModel>> payGiftCardSubscribe(PaySubscribeParams params) async{
    var result = await dataSource.payGiftCardSubscribe(params);
   return toDomainResult<SubscribePaymentDomainModel,SubscribePaymentModel>(result);
  }

}