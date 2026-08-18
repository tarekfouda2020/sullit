import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/models/loyalty_points_balance_model/loyalty_points_balance_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/models/transactions_model/transactions_model.dart';

abstract class LoyaltyPointsDataSource {
  Future<Either<Failure, LoyaltyPointsBalanceModel>> getLoyaltyPointsBalance(
      bool param);

  Future<Either<Failure, List<TransactionsModel>>> getTransactions(
      GenericPaginateParams params);
}
