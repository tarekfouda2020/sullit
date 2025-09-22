// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionsModel _$$_TransactionsModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionsModel(
      id: (json['id'] as num).toInt(),
      points: (json['points'] as num).toInt(),
      transactionNo: (json['transaction_no'] as num).toInt(),
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_TransactionsModelToJson(
        _$_TransactionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'transaction_no': instance.transactionNo,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'created_at': instance.createdAt,
    };
