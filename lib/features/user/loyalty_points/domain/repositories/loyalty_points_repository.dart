
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';

abstract class LoyaltyPointsRepository {

  Future<Either<Failure, LoyaltyPointsBalanceDomainModel>> getLoyaltyPointsBalance(bool param);

  Future<Either<Failure, List<TransactionsDomainModel>>> getTransactions(GenericPaginateParams params);

}