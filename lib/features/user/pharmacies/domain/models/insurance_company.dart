import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class InsuranceCompany extends BaseDomainModel {
  final int id;
  final String name;
  final String code;
  final String logo;
  bool isSelected;

  InsuranceCompany({
    required this.id,
    required this.name,
    required this.code,
    required this.logo,
     this.isSelected = false,
  });

  String get displayName => name ?? '';
  String get logoUrl => logo ?? '';
}
