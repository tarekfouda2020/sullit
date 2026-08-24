import '../../../../../core/models/domain_model/base_domain_model.dart';
class ProductOptionValue extends BaseDomainModel {
  final int id;
  final String name;
  final String price;
  final bool isDefault;
  final int sortOrder;

  const ProductOptionValue({
    required this.id,
    required this.name,
    required this.price,
    required this.isDefault,
    required this.sortOrder,
  });

  factory ProductOptionValue.fromJson(Map<String, dynamic> json) {
    return ProductOptionValue(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      isDefault: json['is_default'],
      sortOrder: json['sort_order'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'is_default': isDefault,
      'sort_order': sortOrder,
    };
  }
}
