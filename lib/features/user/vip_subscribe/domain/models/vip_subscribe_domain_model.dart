import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class VipSubscribeDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String duration;
  final String price;
  final int days;
  final int? expiredInDays;
  final String description;
  final String? startsAt;
  final String? expiresAt;
  bool isSelected = false;
  final bool? isExpired;
  final VipSubscribeDomainModel? subscription;


  VipSubscribeDomainModel({
    required this.id,
    required this.name,
    required this.duration,
    required this.price,
    required this.days,
    required this.description,
    required this.subscription,
    this.isSelected = false,
    this.startsAt,
    this.expiresAt,
    this.expiredInDays,
    this.isExpired,
  });
}
