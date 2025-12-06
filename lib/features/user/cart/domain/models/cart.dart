import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';

class CartDomainModel extends BaseDomainModel {
  List<CartItem>? items;

  String? subTotal;

  num? calculableTotal;

  String? currencySymbol;

  String? minimumAmountMsg;
  double? minimumAmount;
  bool? minimumStatus;

  CartDomainModel({
     this.items,
     this.subTotal,
     this.calculableTotal,
     this.currencySymbol,
     this.minimumAmountMsg,
     this.minimumAmount,
     this.minimumStatus,
  });


  String getProductsTotalWithoutTax() {
    final List<double> allPrices = (items ?? <CartItem>[])
        .map((element) {
          var price =  getIt<Utilities>().extractFormattedNumberToDouble(element.price) ?? 0.0;
          var qty = element.quantity;
          return price * qty;
    }
    )
        .toList();
    double sumAllPrices = allPrices.fold(0.0, (sum, item) => sum + item);
    return sumAllPrices.toStringAsFixed(2);
  }

}
