import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/enum/loyalty_point_type_enum.dart';

class TransactionsDomainModel extends BaseDomainModel {
  final int id;
  final int points;
  final int transactionsNo;
  final String type;
  final String typeLabel;
  final String createdAt;

  TransactionsDomainModel({
    required this.id,
    required this.points,
    required this.transactionsNo,
    required this.type,
    required this.typeLabel,
    required this.createdAt,
  });

  TransactionsDomainModel copyWith() {
    return TransactionsDomainModel(
      id: id,
      points: points,
      transactionsNo: transactionsNo,
      type: type,
      typeLabel: typeLabel,
      createdAt: createdAt,
    );
  }

  LoyaltyPointTypeEnum transactionType() {
    if (type == "gained") {
      return LoyaltyPointTypeEnum.gained;
    } else {
      return LoyaltyPointTypeEnum.deduct;
    }
  }
}
