import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';

class GetWalletTypes extends UseCase<List<WalletTypes>, bool> {
  @override
  Future<List<WalletTypes>> call(bool params) async {
    var result = await getIt<WalletRepository>().getWalletTypes(params);
    return result.fold((l) => [], (r) => r);
  }
}
