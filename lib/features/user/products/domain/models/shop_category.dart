import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShopCategory extends BaseDomainModel {
  final int id;
  final String name;
  final String icon;
  final String slug;
  final String description;
  final String metaTitle;
  final String metaDescription;
  bool isSelect;

  ShopCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.slug,
    required this.description,
    required this.metaTitle,
    required this.metaDescription,
    this.isSelect = false,
  });
}
