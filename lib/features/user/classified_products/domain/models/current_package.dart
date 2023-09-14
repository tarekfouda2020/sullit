import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CurrentPackage extends BaseDomainModel {
  int id;

  String name;

  String logo;
  bool isFree;
  String amount;
  int productUpload;

  CurrentPackage({
    required this.id,
    required this.name,
    required this.logo,
    required this.amount,
    required this.isFree,
    required this.productUpload,
  });
}
