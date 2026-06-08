import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PopularProductsDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String? banner;
  final int productsCount;

  PopularProductsDomainModel(
      {required this.id,
      required this.name,
      this.banner,
      required this.productsCount});
}
