import 'package:flutter_tdd/features/user/products/domain/models/product_option_value.dart';
import '../../../../../core/models/domain_model/base_domain_model.dart';

class ProductOptionModel extends BaseDomainModel {
  final int id;
  final String name;
  final String type;
  final bool isRequired;
  final int? maxSelect;
  final int sortOrder;
  final List<ProductOptionValue> values;

  const ProductOptionModel({
    required this.id,
    required this.name,
    required this.type,
    required this.isRequired,
    this.maxSelect,
    required this.sortOrder,
    required this.values,
  });

  factory ProductOptionModel.fromJson(Map<String, dynamic> json) {
    return ProductOptionModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      isRequired: json['is_required'],
      maxSelect: json['max_select'],
      sortOrder: json['sort_order'],
      values: (json['values'] as List)
          .map(
            (e) => ProductOptionValue.fromJson(
          e as Map<String, dynamic>,
        ),
      )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'is_required': isRequired,
      'max_select': maxSelect,
      'sort_order': sortOrder,
      'values': values.map((e) => e.toJson()).toList(),
    };
  }
}