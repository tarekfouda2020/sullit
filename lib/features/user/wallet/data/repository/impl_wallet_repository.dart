import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/entites/recharge_wallet_params.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WalletRepository)
class ImplWalletRepository extends WalletRepository with ModelToDomain {
  var dataSource = getIt<WalletDataSources>();

  @override
  Future<Either<Failure, Wallet>> getMyWallet(bool param) async {
    var result = await dataSource.getMyWallet(param);
    return toDomainResult<Wallet, WalletModel>(result);
  }

  @override
  Future<Either<Failure, List<WalletTypes>>> getWalletTypes(bool param) async {
    var result = await dataSource.getWalletTypes(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, String>> rechargeWallet(
      RechargeWalletParams param) async {
    return await dataSource.rechargeWallet(param);
  }
}
