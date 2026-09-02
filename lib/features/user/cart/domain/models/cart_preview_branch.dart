import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CartPreviewBranch extends BaseDomainModel {
  final int id;
  final String name;

  CartPreviewBranch({
    required this.id,
    required this.name,
  });
}
