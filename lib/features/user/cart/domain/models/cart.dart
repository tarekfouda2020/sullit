import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/cart_type.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/min_amount_seller_domain.dart';

class CartDomainModel extends BaseDomainModel {
  String? type;

  List<GeneralCartItem>? items;

  List<GeneralCartItem>? pharmacyItems;

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
    this.minAmountSellers,
    this.type,
    this.pharmacyItems,
  });

  String getProductsTotalWithoutTax() {
    final List<double> allPrices = (currentCartItems).map((element) {
      var price =
          getIt<Utilities>().extractFormattedNumberToDouble(element.price) ??
              0.0;
      var qty = element.quantity;
      return price * qty;
    }).toList();
    double sumAllPrices = allPrices.fold(0.0, (sum, item) => sum + item);
    return sumAllPrices.toStringAsFixed(2);
  }

  int get totalQnt => (currentCartItems)
      .fold(0, (previousValue, element) => previousValue + element.quantity);

  MinAmountSellerDomain? getRequiredSeller() {
    if (minAmountSellers?.isNotEmpty == true) {
      return minAmountSellers
          ?.where((element) => element.minOrderAmount == (minimumAmount ?? 0.0))
          .first;
    } else {
      return null;
    }
  }

  double getRequiredSellerAmount() {
    return getRequiredSeller()?.minOrderAmount ?? 0.0;
  }

  String getRequiredSellerName() {
    return getRequiredSeller()?.name ?? "";
  }

  double requiredSellerProductsInCart() {
    int? requiredSellerId = getRequiredSeller()?.id;
    if (requiredSellerId != null) {
      return currentCartItems
              .where((element) => element.ownerId == requiredSellerId)
              .map((e) => e.calculableTotal)
              .fold(0,
                  (previousValue, element) => (previousValue ?? 0) + element) ??
          0.0;
    } else {
      return 0.0;
    }
  }

  double getRemainAmountToOrder() {
    var amount = getRequiredSellerAmount() - requiredSellerProductsInCart();
    return amount > 0 ? amount : 0.0;
  }

  int? getRequiredShopId() {
    return currentCartItems
        .where((element) => element.ownerId == getRequiredSeller()?.id)
        .first
        .shopId;
  }

  CartType cartType() {
    if (type == "pharmacy") {
      return CartType.pharmacy;
    } else {
      return CartType.general;
    }
  }

  List<GeneralCartItem> get currentCartItems =>
      cartType() == CartType.pharmacy ? pharmacyItems ?? [] : items ?? [];

  /// used in seller details page and in sellers ist in cart page that dose not reach th min amount

  double getSingleSellerReMainAmount(int shopId) {
    MinAmountSellerDomain? shop =
        minAmountSellers?.firstWhere((element) => element.shopId == shopId);
    List<GeneralCartItem>? sellerProductsInCart =
        currentCartItems.where((element) => element.shopId == shopId).toList();
    double? productsSum = sellerProductsInCart.fold(
        0.0, (prev, ele) => ((prev ?? 0) + ele.calculableTotal));
    double remain = (shop?.minOrderAmount ?? 0) - (productsSum ?? 0);
    return remain;
  }
}
