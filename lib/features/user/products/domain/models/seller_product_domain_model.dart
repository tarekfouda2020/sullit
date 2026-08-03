import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/price_range.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class SellerProductDomainModel extends BaseDomainModel {
  final SellerSectionProductModel sectionProductModel;

  final PriceRange priceRange;

  SellerProductDomainModel({
    required this.sectionProductModel,
    required this.priceRange,
  });
}

class SellerSectionProductModel extends BaseDomainModel {
  final SellerPaginationModel pagination;
  final List<ProductCard> products;

  SellerSectionProductModel({required this.products, required this.pagination});

}

class SellerPaginationModel extends BaseDomainModel {
  final int totalItems;
  final int countItems;
  final int perPage;
  final int totalPages;
  final int currentPage;
  final String nextPageUrl;
  final String pervPageUrl;

  SellerPaginationModel(
      {required this.totalItems,
      required this.countItems,
      required this.perPage,
      required this.totalPages,
      required this.currentPage,
      required this.nextPageUrl,
      required this.pervPageUrl});
}
