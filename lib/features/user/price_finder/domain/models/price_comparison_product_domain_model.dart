import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PriceComparisonProductDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String unit;
  final String thumbnailImage;
  final String barcode;
  final String categoryName;

  PriceComparisonProductDomainModel({
    required this.id,
    required this.name,
    required this.unit,
    required this.thumbnailImage,
    required this.barcode,
    required this.categoryName,
  });
}
