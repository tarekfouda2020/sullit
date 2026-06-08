import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_transaction_model/wallet_transaction_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_types_model/wallet_types_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/entites/recharge_wallet_params.dart';

abstract class WalletDataSources {
  Future<Either<Failure, WalletModel>> getMyWallet(bool param);

  Future<Either<Failure, List<WalletTypesModel>>> getWalletTypes(bool param);

  Future<Either<Failure, String>> rechargeWallet(RechargeWalletParams param);

  Future<Either<Failure, List<WalletTransactionModel>>> walletTransactions(
      GenericPaginateParams param);
}
