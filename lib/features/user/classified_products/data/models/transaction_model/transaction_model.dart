import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
@immutable
class TransactionModel extends BaseApiModel<Transaction>
    with _$TransactionModel {
  const TransactionModel._();
  @JsonSerializable(explicitToJson: true)
  const factory TransactionModel(
          {@JsonKey(name: 'transaction_url') String? transactionUrl}) =
      _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  @override
  Transaction toDomainModel() {
    return Transaction(transactionUrl: transactionUrl);
  }
}
