// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletItemModel _$$_WalletItemModelFromJson(Map<String, dynamic> json) =>
    _$_WalletItemModel(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String,
      dmount: json['dmount'] as String,
      paymentMethod: json['payment_method'] as String,
      approval: json['approval'] as String,
    );

Map<String, dynamic> _$$_WalletItemModelToJson(_$_WalletItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'dmount': instance.dmount,
      'payment_method': instance.paymentMethod,
      'approval': instance.approval,
    };
