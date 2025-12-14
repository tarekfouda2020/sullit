

import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class AllProductsSearchDomainResul extends BaseDomainModel {
  List<Product> products;

  AllProductsSearchDomainResul({
    required this.products,
  });
}