import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_item.dart';

class WalletRechargeHistory extends BaseDomainModel {
  List<WalletItem> wallets;
  WalletRechargeHistory({required this.wallets});
}
