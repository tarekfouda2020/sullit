import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PriceComparisonStepDomainModel extends BaseDomainModel {
  final String key;
  final String label;
  final String status;

  PriceComparisonStepDomainModel({
    required this.key,
    required this.label,
    required this.status,
  });
}
