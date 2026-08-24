import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CartOption extends BaseDomainModel {
  final CartOptionInfo option;
  final List<CartOptionValue> values;

  CartOption({
    required this.option,
    required this.values,
  });
}

class CartOptionInfo extends BaseDomainModel {
  final int id;
  final String name;
  final String type;
  final bool isRequired;
  final int? maxSelect;

  CartOptionInfo({
    required this.id,
    required this.name,
    required this.type,
    required this.isRequired,
    this.maxSelect,
  });
}

class CartOptionValue extends BaseDomainModel {
  final int id;
  final String name;
  final String price;

  CartOptionValue({
    required this.id,
    required this.name,
    required this.price,
  });
}
