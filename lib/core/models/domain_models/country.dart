import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Country extends BaseDomainModel {
  int id;
  String name;
  String code;

  Country({
    required this.id,
    required this.name,
    required this.code,
  });
}
