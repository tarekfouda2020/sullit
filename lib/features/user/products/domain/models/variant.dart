import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Variant extends BaseDomainModel {
  int? id;
  String? name;
  String? sku;
  String? strokedPrice;
  String? calculablePrice;
  String? mainPrice;
  int? currentStock;
  String? currencySymbol;
  String? image;
  String? options;
   bool? hasDiscount;
  String? originalPrice;

  Variant({
    required this.id,
    required this.name,
    required this.strokedPrice,
    required this.calculablePrice,
    required this.mainPrice,
    required this.currentStock,
    required this.currencySymbol,
    required this.image,
    required this.options,
    required this.sku,
    required this.hasDiscount,
    required this.originalPrice,
  });

  Variant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sku = json['sku'];
    name = json['name'];
    strokedPrice = json['stroked_price'];
    calculablePrice = json['calculable_price'];
    mainPrice = json['main_price'];
    currentStock = json['current_stock'];
    currencySymbol = json['currency_symbol'];
    image = json['image'];
    options = json['options'];
    originalPrice = json['original_price'];
    hasDiscount = json['has_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['stroked_price'] = strokedPrice;
    data['calculable_price'] = calculablePrice;
    data['main_price'] = mainPrice;
    data['current_stock'] = currentStock;
    data['currency_symbol'] = currencySymbol;
    data['image'] = image;
    data['options'] = options;
    data['sku'] = sku;
    data['has_discount'] = hasDiscount;
    data['original_price'] = originalPrice;
    return data;
  }
}
