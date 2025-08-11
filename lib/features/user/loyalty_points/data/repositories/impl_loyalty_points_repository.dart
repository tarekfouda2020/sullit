import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/transaction_model/transaction_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoyaltyPointsRepository)
class ImplLoyaltyPointsRepository extends LoyaltyPointsRepository with ModelToDomain{
  var dataSources = getIt<LoyaltyPointsDataSource>();

  @override
  Future<Either<Failure, LoyaltyPointsBalanceDomainModel>> getLoyaltyPointsBalance(bool param)async {
    var result = await dataSources.getLoyaltyPointsBalance(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<TransactionsDomainModel>>> getTransactions(GenericPaginateParams params)async {
    var result = await dataSources.getTransactions(params);
    return toDomainResultList<TransactionsDomainModel,TransactionModel>(result);
  }
}