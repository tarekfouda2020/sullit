import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_model.freezed.dart';
part 'transactions_model.g.dart';

@freezed
class TransactionsModel extends BaseApiModel<TransactionsDomainModel> with _$TransactionsModel{
  const TransactionsModel._();
  @JsonSerializable(explicitToJson: true)
  factory TransactionsModel({
    required int id,
    required int points,
    @JsonKey(name: "transaction_no") required int transactionNo,
    required String type,
    @JsonKey(name: "type_label") required String typeLabel,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _TransactionsModel;


  factory TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsModelFromJson(json);

  @override
  TransactionsDomainModel toDomainModel() {
    return TransactionsDomainModel(
      id: id,
      points: points,
      transactionsNo: transactionNo,
      type: type,
      typeLabel: typeLabel,
      createdAt: createdAt,
    );
  }
}