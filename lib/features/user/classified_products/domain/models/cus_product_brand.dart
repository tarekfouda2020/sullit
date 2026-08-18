import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CusProductBrand extends BaseDomainModel {
  int id;
  String name;
  String logo;
  CusProductBrand({required this.id, required this.name, required this.logo});
}
