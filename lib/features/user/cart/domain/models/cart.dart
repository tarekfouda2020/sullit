import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/min_amount_seller_domain.dart';

class CartDomainModel extends BaseDomainModel {
  List<CartItem>? items;

 List<MinAmountSellerDomain>? minAmountSellers;

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
    this.minAmountSellers
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

  int get totalQnt => (items??<CartItem>[]).fold(0, (previousValue, element) =>previousValue+element.quantity);


  MinAmountSellerDomain? getRequiredSeller(){
    if(minAmountSellers?.isNotEmpty == true){
      return minAmountSellers?.where((element) => element.minOrderAmount == (minimumAmount ?? 0.0)).first;;
    }else{
      return null;
    }
  }


  double getRequiredSellerAmount(){
    return getRequiredSeller()?.minOrderAmount ?? 0.0;
  }

  String getRequiredSellerName(){
    return getRequiredSeller()?.name ?? "";
  }
  
  double requiredSellerProductsInCart(){
    int? requiredSellerId = getRequiredSeller()?.id;
    if(requiredSellerId!=null){
      return items
          ?.where((element) => element.ownerId == requiredSellerId)
          .map((e) => e.calculableTotal)
          .fold(0, (previousValue, element) => (previousValue ?? 0)+element) ?? 0.0;
    }else{
      return 0.0 ;
    }
  }


  double getRemainAmountToOrder(){
    var amount = getRequiredSellerAmount() - requiredSellerProductsInCart();
    return amount > 0 ? amount : 0.0;
  }

  int? getRequiredShopId(){
    return items?.where((element) => element.ownerId == getRequiredSeller()?.id).first.shopId;
  }


}
