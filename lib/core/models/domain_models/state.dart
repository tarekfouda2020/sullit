import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';

class StateDomainModel extends BaseDomainModel {
  int id;
  String name;
  Country? country;

  StateDomainModel({
    required this.id,
    required this.name,
    this.country,
  });
}
