import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_queries.dart';

class ProductDetailsDomainModel extends BaseDomainModel {
  final Product product;
  final BranchDomainModel? branch;
  final List<ProductCard> relatedProducts;
  final List<ProductCard> topProducts;
  final ProductQueries productQueries;

  ProductDetailsDomainModel(
      {required this.product,
      required this.relatedProducts,
      required this.topProducts,
       this.branch,
      required this.productQueries});

}
