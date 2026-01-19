import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShopCategory extends BaseDomainModel {
  final int id;
  final String name;
  final String icon;
  final String slug;

  ShopCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.slug,
  });
}
