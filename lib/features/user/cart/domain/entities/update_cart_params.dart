import 'dart:convert';

import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';

class UpdateCartItemParams {
  String? macAddress;
  int id;
  int qty;
  final List<ProductOptionsParams>? options;
  UpdateCartItemParams({
    required this.macAddress,
    required this.qty,
    required this.id,
     this.options,
  });

  Map<String, dynamic> toJson() {
    return {
      'quantity': qty,
    };
  }

  List<Map<String,dynamic>>? getOptions(){
    return options?.map((e) => e.toJson()).toList();
  }


  String toQuery() {
    var url = "cart/$id/update?_method=put&mac_address=$macAddress";
    if (options != null && options!.isNotEmpty) {
      url += "&options=${json.encode(options)}";
    }
    return url;
  }
}
