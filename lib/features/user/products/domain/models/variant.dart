import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Variant extends BaseDomainModel {
  int? id;
  String? name;
  String? strokedPrice;
  String? calculablePrice;
  String? mainPrice;
  int? currentStock;
  String? currencySymbol;
  String? image;
  String? options;

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
  });

  Variant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    strokedPrice = json['stroked_price'];
    calculablePrice = json['calculable_price'];
    mainPrice = json['main_price'];
    currentStock = json['current_stock'];
    currencySymbol = json['currency_symbol'];
    image = json['image'];
    options = json['options'];
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
    return data;
  }
}
