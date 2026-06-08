import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class OrderDriverDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String email;
  final String image;
  final String phone;
  final String workType;
  final int avgRate;

  OrderDriverDomainModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.phone,
    required this.workType,
    required this.avgRate,
  });
}
