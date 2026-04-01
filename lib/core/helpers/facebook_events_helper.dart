import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart'
    as cat;
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class FacebookEventsHelper {
  FacebookEventsHelper._();

  static FacebookEventsHelper instance = FacebookEventsHelper._();

  final FacebookAppEvents _facebookAppEvents = FacebookAppEvents();

  bool iosEnableTracking = false;

  static const String _currency = "AED";

  static const String _countryCode = "AE";

  static const String _order = "Order";

  static const String _product = "Product";

  static const String _productDetailsOpenedName = "Product_details_opened";

  static const String _categoryOpened = "category_opened";

  static const String _registerMethod = "email";

  Future<void> productAddToCart({
    required int id,
    required String price,
    String? variantId,
    String? variantPrice,
  }) async {
    if (!kReleaseMode) {
      return;
    }
    await _facebookAppEvents.logAddToCart(
        id: id.toString(),
        type: _product,
        currency: _currency,
        price: double.parse(price.replaceAll(",", "")),
        content: {
          ..._userDataJson(),
          if (variantId != null) "variant_id": variantId,
          if (variantPrice != null) "variant_price": variantPrice
        });
  }

  Future<void> wishList({
    required String id,
    required double price,
  }) async {
    if (!kReleaseMode) {
      return;
    }
    await _facebookAppEvents.logAddToWishlist(
        id: id, type: _product, currency: _currency, price: price);
  }

  void purchaseEvent(double amount) {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logPurchase(amount: amount, currency: _currency);
  }

  void checkOut({
    required int itemsNumber,
    required double orderPrice,
    required String orderId,
  }) {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logInitiatedCheckout(
      currency: _currency,
      contentType: _order,
      numItems: itemsNumber,
      totalPrice: orderPrice,
      contentId: orderId,
    );
  }

  void productDetailsOpened(Product product) {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logEvent(
        name: _productDetailsOpenedName,
        parameters: {
      "product_id": product.id,
      "product_name": product.name,
      "product_price": product.priceHighLowDiscount,
      if (product.hasDiscount == true)
        "product_price_discount": product.priceHighLow
    });
  }

  void categoryDetailsOpened(cat.Category category) {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logEvent(name: _categoryOpened, parameters: {
      "category_id": category.id,
      "category_name": category.name,
    });
  }

  void userSubScribeInTier({
    required double price,
    required String planId,
  }) {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logSubscribe(
      orderId: planId,
      currency: _currency,
      price: price,
    );
  }

  String _hashData(String data) {
    return sha256.convert(utf8.encode(data.toLowerCase().trim())).toString();
  }


  void addUserDataEvent(UserDomainModel? data) {
    if (!kReleaseMode) {
      return;
    }
    if (data != null) {
      _facebookAppEvents.setUserData(
        email: data.email,
        firstName: data.name,
        phone: data.phone,
        country: _countryCode,
      );
      //  _facebookAppEvents.setUserData(
      //   email: data.email != null ? _hashData(data.email!) : null,
      //   firstName: data.name != null ? _hashData(data.name!.split(' ').first) : null,
      //   lastName: data.name != null && data.name!.split('').length > 1
      //       ? _hashData(data.name!.split(' ').last)
      //       : null,
      //   phone: data.phone != null ? _hashData(data.phone!) : null,
      // );
    }
  }

  void clearUserData() {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.clearUserData();
  }

  void completedRegistration() {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.logCompletedRegistration(
      registrationMethod: _registerMethod,
    );
  }

  Future<void> setFacebookTracking() async {
    if (!kReleaseMode) {
      return;
    }
    _facebookAppEvents.setAutoLogAppEventsEnabled(true);
    if (Platform.isIOS) {
      enableIosTracking();
    } else {
      _facebookAppEvents.setAdvertiserTracking(enabled: true);
    }
    _facebookAppEvents.setAdvertiserTracking(enabled: true);
  }

  Future<void> enableIosTracking() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isTrackEnabled = prefs.getBool(LocalStorageKeys.iosEnableEvents);
    if (isTrackEnabled == true) {
      iosEnableTracking = true;
      _facebookAppEvents.setAdvertiserTracking(
        enabled: true,
      );
      return;
    }
    TrackingStatus status =
        await AppTrackingTransparency.requestTrackingAuthorization();
    if (status == TrackingStatus.authorized) {
      prefs.setBool(LocalStorageKeys.iosEnableEvents, true);
      iosEnableTracking = status == TrackingStatus.authorized;
      _facebookAppEvents.setAdvertiserTracking(
        enabled: iosEnableTracking,
      );
    }
  }

  UserDomainModel? _userData() {
    BuildContext ctx = getIt<GlobalContext>().context();
    return ctx.read<UserCubit>().state.model;
  }

  Map<String, dynamic> _userDataJson() {
    UserDomainModel? data = _userData();
    return data != null
        ? {
            "user_name": data.name,
            "user_id": data.id,
            "user_email": data.email,
          }
        : {};
  }
}
