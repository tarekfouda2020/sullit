
import 'dart:developer';
import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart' as cat;
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.dart';

class FacebookEventsHelper {

  FacebookEventsHelper._();

  static FacebookEventsHelper instance = FacebookEventsHelper._();

  final FacebookAppEvents facebookAppEvents = FacebookAppEvents();

  bool iosEnableTracking = false;

  static const String currency = "AED";

  static const String countryCode = "AE";

  static const String order = "Order";

  static const String product = "Product";

  static const String productDetailsOpenedName = "Product_details_opened";

  static const String categoryOpened = "category_opened";

  static const String registerMethod = "email";


  void productAddToCart({
    required int id,
    required String price,
     String? variantId,
     String? variantPrice,
  }) {
    // if(!kReleaseMode){
    //   return ;
    // }
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
    if(!kReleaseMode){
      return ;
    }
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

  void clearUserData(UserDomainModel? data){
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.clearUserData();
  }



  void completedRegistration(){
    if(!kReleaseMode){
      return ;
    }
    facebookAppEvents.logCompletedRegistration(
        registrationMethod: registerMethod,
    );
  }


  Future<void> setFacebookTracking()async{
    facebookAppEvents.setAutoLogAppEventsEnabled(true);
    if (Platform.isIOS) {
      enableIosTracking();
    } else {
      facebookAppEvents.setAdvertiserTracking(enabled: true);
    }
  }


  Future<void> enableIosTracking()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isTrackEnabled = prefs.getBool(LocalStorageKeys.iosEnableEvents);
    if(isTrackEnabled == true){
      iosEnableTracking = true;
      facebookAppEvents.setAdvertiserTracking(
        enabled: true,
      );
      return ;
    }
     TrackingStatus status = await AppTrackingTransparency.requestTrackingAuthorization();
     if(status == TrackingStatus.authorized){
       prefs.setBool(LocalStorageKeys.iosEnableEvents, true);
       iosEnableTracking = status == TrackingStatus.authorized;
       facebookAppEvents.setAdvertiserTracking(
         enabled: iosEnableTracking,
       );
     }

   }

}