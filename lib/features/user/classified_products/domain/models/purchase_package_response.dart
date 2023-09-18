import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/transaction.dart';

class PurchasePackageResponse extends BaseDomainModel {
  String key ;
  String msg ;
  Transaction? data ;

  PurchasePackageResponse ({required this.key, required this.msg,  this.data});
}