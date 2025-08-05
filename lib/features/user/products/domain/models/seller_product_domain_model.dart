import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/pagination_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class SellerProductDomainModel extends BaseDomainModel {

  final Shop shop;
  final SellerSectionProductModel sectionProductModel;

  SellerProductDomainModel({required this.sectionProductModel, required this.shop});
}


class SellerSectionProductModel extends BaseDomainModel {
  final PaginationDomainModel pagination;
  final List<Product> products;

  SellerSectionProductModel({required this.products, required this.pagination});

}
