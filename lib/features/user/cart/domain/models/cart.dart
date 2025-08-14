import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
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


  String getProductsTotalWithoutTax() {
    final List<double> allTaxList = (items ?? <CartItem>[])
        .map((element) =>
    getIt<Utilities>().extractFormattedNumberToDouble(element.tax) ?? 0.0)
        .toList();

    double tax = allTaxList.fold(0.0, (sum, item) => sum + item);

    double totalWithoutTax = (calculableTotal ?? 0).toDouble() - tax;

    return totalWithoutTax.toStringAsFixed(2);
  }

}
