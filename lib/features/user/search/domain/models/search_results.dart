import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class SearchResults extends BaseDomainModel {
  final List<String> suggestions;
  final List<Product> products;
  final List<Category> categories;
  final List<Shop> shops;

  SearchResults({
    required this.suggestions,
    required this.products,
    required this.categories,
    required this.shops,
  });
}
