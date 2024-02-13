import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class ProductSections extends BaseDomainModel {
  final int id;
  final String name;
  final String description;
  final List<Product> products;

  ProductSections({
    required this.id,
    required this.name,
    required this.description,
    required this.products,
  });
}
