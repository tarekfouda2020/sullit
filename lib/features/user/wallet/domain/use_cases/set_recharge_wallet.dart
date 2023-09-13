import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/wallet/domain/entites/recharge_wallet_params.dart';
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';

class SetRechargeWallet extends UseCase<String, RechargeWalletParams> {
  @override
  Future<String> call(RechargeWalletParams params) async {
    var result = await getIt<WalletRepository>().rechargeWallet(params);
    return result.fold((l) => "", (r) => r);
  }
}
