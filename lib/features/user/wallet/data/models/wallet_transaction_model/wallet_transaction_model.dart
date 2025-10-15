import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction_model.freezed.dart';
part 'wallet_transaction_model.g.dart';

@freezed
@immutable
class WalletTransactionModel extends BaseApiModel<WalletTransaction> with _$WalletTransactionModel {
  const WalletTransactionModel._();
  
  @JsonSerializable(explicitToJson: true)
  const factory WalletTransactionModel({
    required int id,
    required String type,
    @JsonKey(name: "type_label") required String typeLabel,
    @JsonKey(name: "source_type") required String sourceType,
    @JsonKey(name: "source_type_label") required String sourceTypeLabel,
    required String amount,
    @JsonKey(name: "reference_no") required String referenceNo,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _WalletTransactionModel;

  factory WalletTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionModelFromJson(json);

  @override
  WalletTransaction toDomainModel() {
    return WalletTransaction(
      id: id,
      type: type,
      typeLabel: typeLabel,
      sourceType: sourceType,
      sourceTypeLabel: sourceTypeLabel,
      amount: amount,
      referenceNo: referenceNo,
      createdAt: createdAt,
    );
  }
}












