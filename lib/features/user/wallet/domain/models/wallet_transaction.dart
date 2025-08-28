import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class WalletTransaction extends BaseDomainModel {
  final int id;
  final String type;
  final String typeLabel;
  final String sourceType;
  final String sourceTypeLabel;
  final String amount;
  final String referenceNo;
  final String createdAt;

  WalletTransaction({
    required this.id,
    required this.type,
    required this.typeLabel,
    required this.sourceType,
    required this.sourceTypeLabel,
    required this.amount,
    required this.referenceNo,
    required this.createdAt,
  });
}


