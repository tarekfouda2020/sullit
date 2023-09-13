import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';

class SectionsProducts extends BaseDomainModel {
  List<CusProduct> products;

  SectionsProducts({
    required this.products,
  });
}
