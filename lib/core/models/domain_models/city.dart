import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';

class City extends BaseDomainModel {
  int id;

  String name;

  StateDomainModel? state;

  City({
    required this.id,
    required this.name,
    required this.state,
  });
}
