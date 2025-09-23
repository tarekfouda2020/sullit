// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletTransactionModel _$$_WalletTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _$_WalletTransactionModel(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      sourceType: json['source_type'] as String,
      sourceTypeLabel: json['source_type_label'] as String,
      amount: json['amount'] as String,
      referenceNo: json['reference_no'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_WalletTransactionModelToJson(
        _$_WalletTransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'source_type': instance.sourceType,
      'source_type_label': instance.sourceTypeLabel,
      'amount': instance.amount,
      'reference_no': instance.referenceNo,
      'created_at': instance.createdAt,
    };
