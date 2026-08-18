import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';

class SearchResults extends BaseDomainModel {
  final List<String>? suggestions;
  final List<ProductCard> products;
  final List<Category> categories;
  final List<ShopCardDomainModel>? shops;

  SearchResults({
    this.suggestions,
    required this.products,
    required this.categories,
    this.shops,
  });
}
