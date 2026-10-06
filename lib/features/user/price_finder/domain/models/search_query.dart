import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SearchQuery extends BaseDomainModel {
  final int id;
  final String query;
  final int count;
  final int? categoryId;
  final String? categoryName;

  SearchQuery({
    required this.id,
    required this.query,
    required this.count,
    this.categoryId,
    this.categoryName,
  });
}