import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/attributes.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/price_range.dart';

class SubCategory extends BaseDomainModel {
  final Category category;
  final List<Category> categories;
  final List<Category> subCats;
  final List<BrandDomainModel> brands;
  final List<ColorDomainModel> colors;
  final List<Attributes> attributes;
  final PriceRange priceRange;
  // final SectionPagination allProducts;
  int? selectedId;
  bool isColorAttributeOpened;

  SubCategory({
    required this.category,
    required this.categories,
    required this.subCats,
    required this.brands,
    required this.colors,
    required this.attributes,
    required this.priceRange,
    // required this.allProducts,
    this.selectedId,
    this.isColorAttributeOpened = false,
  });
}
