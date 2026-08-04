import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Blog extends BaseDomainModel {
  int id;
  String banner;
  String title;
  String slug;
  String category;
  String shortDescription;

  String description;

  Blog({
    required this.id,
    required this.banner,
    required this.slug,
    required this.title,
    required this.category,
    required this.description,
    required this.shortDescription,
  });
}
