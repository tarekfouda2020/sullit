import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PharmacyOrderRequestedByModel extends BaseDomainModel {
  final String key;
  final String label;

  PharmacyOrderRequestedByModel({
    required this.key,
    required this.label,
  });
}
