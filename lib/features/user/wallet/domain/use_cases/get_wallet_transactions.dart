import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_transaction.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';

class GetWalletTransactions extends UseCase<List<WalletTransaction>, GenericPaginateParams> {
  @override
  Future<List<WalletTransaction>> call(GenericPaginateParams params) async {
    var result = await getIt<WalletRepository>().walletTransactions(params);
    return result.fold(
            (l) => [],
            (r) => r
    );
  }
}