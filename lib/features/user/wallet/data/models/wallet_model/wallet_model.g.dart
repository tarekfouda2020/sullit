// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletModel _$$_WalletModelFromJson(Map<String, dynamic> json) =>
    _$_WalletModel(
      walletBalance: json['wallet_balance'] as String,
      walletCredit: json['wallet_credit'] as String,
      rechargedHistory: WalletRechargeHistoryModel.fromJson(
          json['wallet_recharge_history'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WalletModelToJson(_$_WalletModel instance) =>
    <String, dynamic>{
      'wallet_balance': instance.walletBalance,
      'wallet_credit': instance.walletCredit,
      'wallet_recharge_history': instance.rechargedHistory.toJson(),
    };
