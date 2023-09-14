import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/current_package.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/sections_products.dart';

class ClassifiedProductsDomainModel extends BaseDomainModel {
  int remainingUploads;

  CurrentPackage currentPackage;

  SectionsProducts sectionsProducts;

  ClassifiedProductsDomainModel({
    required this.remainingUploads,
    required this.currentPackage,
    required this.sectionsProducts,
  });
}
