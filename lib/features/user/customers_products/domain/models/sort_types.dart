import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SortTypes extends BaseDomainModel {
  final String name;
  final String type;

  SortTypes({required this.name, required this.type});
}
