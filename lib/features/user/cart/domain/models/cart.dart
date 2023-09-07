import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';

class CartDomainModel extends BaseDomainModel {
  List<CartItem>? items;

  String? subTotal;

  num? calculableTotal;

  String? currencySymbol;

  CartDomainModel({
     this.items,
     this.subTotal,
     this.calculableTotal,
     this.currencySymbol,
  });
}
