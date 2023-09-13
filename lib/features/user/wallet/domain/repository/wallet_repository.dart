import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/wallet/domain/entites/recharge_wallet_params.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';

abstract class WalletRepository {
  Future<Either<Failure, Wallet>> getMyWallet(bool param);

  Future<Either<Failure, List<WalletTypes>>> getWalletTypes(bool param);

  Future<Either<Failure, String>> rechargeWallet(RechargeWalletParams param);
}
