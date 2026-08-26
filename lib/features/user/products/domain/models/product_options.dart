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
  bool isSelected;

  ProductOptionModel({
    required this.id,
    required this.name,
    required this.type,
    required this.isRequired,
    this.maxSelect,
    required this.sortOrder,
    required this.values,
    this.isSelected = false,
  });

  bool get isRadio => type == "radio" || maxSelect == 1;

  factory ProductOptionModel.fromJson(Map<String, dynamic> json) {
    return ProductOptionModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      isRequired: json['is_required'],
      maxSelect: json['max_select'],
      sortOrder: json['sort_order'],
      isSelected: json['is_selected'] == true,
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
      'is_selected': isSelected,
      'values': values.map((e) => e.toJson()).toList(),
    };
  }
}
