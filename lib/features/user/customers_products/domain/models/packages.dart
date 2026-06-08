import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Packages extends BaseDomainModel {
  int id;
  String name;
  String logo;
  bool isFree;
  String amount;
  int productUpload;

  Packages({
    required this.id,
    required this.name,
    required this.logo,
    required this.isFree,
    required this.amount,
    required this.productUpload,
  });
}
