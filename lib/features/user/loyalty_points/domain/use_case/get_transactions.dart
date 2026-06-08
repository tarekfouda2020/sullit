import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart';

class GetTransactions
    implements UseCase<List<TransactionsDomainModel>, GenericPaginateParams> {
  @override
  Future<List<TransactionsDomainModel>> call(
      GenericPaginateParams param) async {
    var result =
        await getIt.get<LoyaltyPointsRepository>().getTransactions(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
