import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/sort_types.dart';

class ProductSpecifications extends BaseDomainModel {
  final List<BrandDomainModel> brands;
  final List<Category> categories;
  final List<Category> subCategories;
  final List<SortTypes> sortTypes;
  final List<SortTypes> sortConditions;
  int? selectedId;

  ProductSpecifications({
    required this.brands,
    required this.categories,
    required this.subCategories,
    required this.sortTypes,
    required this.sortConditions,
    this.selectedId,
  });
}
