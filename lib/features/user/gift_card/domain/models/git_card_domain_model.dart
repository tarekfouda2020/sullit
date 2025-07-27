import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class GiftCardDomainModel extends BaseDomainModel {
  final int id;
  final String title;
  final String? code;
  final String price;
  final String value;
  final int validateDays;
  final String? expiredAt;
  final int? expiredInDays;
  final bool? isExpired;

  GiftCardDomainModel({
    required this.id,
    required this.title,
    required this.code,
    required this.price,
    required this.value,
    required this.validateDays,
    required this.expiredAt,
    required this.expiredInDays,
    required this.isExpired,
  });

  GiftCardDomainModel copyWith() {
    return GiftCardDomainModel(
      id: id,
      title: title,
      code: code,
      price: price,
      value: value,
      validateDays: validateDays,
      expiredAt: expiredAt,
      expiredInDays: expiredInDays,
      isExpired: isExpired,
    );
  }
}
