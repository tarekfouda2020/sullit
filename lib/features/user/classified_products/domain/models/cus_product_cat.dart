import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CusProductsCat extends BaseDomainModel {
  int id;
  String name;

  CusProductsCat({required this.id, required this.name});
}
