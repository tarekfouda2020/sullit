import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_item_model/wallet_item_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_recharge_history_model.freezed.dart';
part 'wallet_recharge_history_model.g.dart';

@freezed
@immutable
class WalletRechargeHistoryModel extends BaseApiModel<WalletRechargeHistory>
    with _$WalletRechargeHistoryModel {
  const WalletRechargeHistoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory WalletRechargeHistoryModel(
      {required List<WalletItemModel> wallets}) = _WalletRechargeHistoryModel;

  factory WalletRechargeHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WalletRechargeHistoryModelFromJson(json);

  @override
  WalletRechargeHistory toDomainModel() {
    return WalletRechargeHistory(
      wallets: wallets.map((e) => e.toDomainModel()).toList(),
    );
  }
}
