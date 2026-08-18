import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_recharge_history_model/wallet_recharge_history_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
@immutable
class WalletModel extends BaseApiModel<Wallet> with _$WalletModel {
  const WalletModel._();

  @JsonSerializable(explicitToJson: true)
  const factory WalletModel(
      {@JsonKey(name: "wallet_balance") required String walletBalance,
      @JsonKey(name: "wallet_credit") required String walletCredit,
      @JsonKey(name: "wallet_recharge_history")
      required WalletRechargeHistoryModel rechargedHistory}) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  @override
  Wallet toDomainModel() {
    return Wallet(
      walletBalance: walletBalance,
      walletCredit: walletCredit,
      rechargeHistory: rechargedHistory.toDomainModel(),
    );
  }
}
