import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_model.freezed.dart';
part 'transactions_model.g.dart';

@freezed
class TransactionsModel with _$TransactionsModel{
  const TransactionsModel._();
  @JsonSerializable(explicitToJson: true)
  factory TransactionsModel({
    required int id,
    required int points,
    @JsonKey(name: "transaction_no") required String transactionNo,
    required String type,
    @JsonKey(name: "type_label") required String typeLabel,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _TransactionsModel;


  factory TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsModelFromJson(json);
}