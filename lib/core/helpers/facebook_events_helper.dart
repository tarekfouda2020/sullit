
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart' as cat;
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class FacebookEventsHelper {

  FacebookEventsHelper._();

  static FacebookEventsHelper instance = FacebookEventsHelper._();

  final FacebookAppEvents facebookAppEvents = FacebookAppEvents();

  final String currency = "AED";

  final String countryCode = "AE";

  final String order = "Order";

  final String product = "Product";

  final String productDetailsOpenedName = "Product_details_opened";

  final String categoryOpened = "category_opened";


  void productAddToCart({
    required int id,
    required String price,
     String? variantId,
     String? variantPrice,
  }) {
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logAddToCart(
        id: id.toString(),
        type: product,
        currency: currency,
        price: double.parse(price.replaceAll(",", "")),
      content: {
        if(variantId!=null)
        "variant_id": variantId,
        if(variantPrice!=null)
        "variant_price": variantPrice
      }
    );
  }


  void wishList({
    required String id,
    required double price,
  }) {
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logAddToWishlist(
        id: id,
        type: product,
        currency: currency,
        price: price
    );
  }

  void purchaseEvent(double amount) {
    facebookAppEvents.logPurchase(amount: amount, currency: currency);
  }

  void checkOut({
    required int itemsNumber,
    required double orderPrice,
    required String orderId,
  }) {
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logInitiatedCheckout(
      currency: currency,
      contentType: order,
      numItems: itemsNumber,
      totalPrice: orderPrice,
      contentId: orderId,
    );
  }


  void productDetailsOpened(Product product) {
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logEvent(
        name: productDetailsOpenedName,
        parameters: {
          "product_id": product.id,
          "product_name": product.name,
          "product_price": product.priceHighLowDiscount,
          if(product.hasDiscount == true)
            "product_price_discount": product.priceHighLow
        }
    );
  }

  void categoryDetailsOpened(cat.Category category){
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logEvent(
        name: categoryOpened,
        parameters: {
          "category_id": category.id,
          "category_name": category.name,
        }
    );
  }

   void userSubScribeInTier({
    required double price,
    required String planId,
  }){
     if(!kReleaseMode){
       return ;
     }
     facebookAppEvents.logSubscribe(
       orderId: planId,
      currency: currency,
       price: price,
     );
  }


  void addUserDataEvent(UserDomainModel? data){
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.setUserData(
      email: data?.email?.toLowerCase(),
      firstName: data?.name?.toLowerCase(),
      phone: data?.fullPhone?.toLowerCase(),
      country:countryCode,
    );
  }




}