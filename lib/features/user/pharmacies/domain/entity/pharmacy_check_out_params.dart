import 'dart:convert';

import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';

class PharmacyCheckoutParams {
  final CartTypeEnum type;
  final List<PharmacyShippingInfo> shippingInfo;
  final int addressId;
  int? applyLoyaltyPoints;
  String? couponCode;
  String? giftCardCode;
  int? applyInsurance;

  PharmacyCheckoutParams({
    this.type = CartTypeEnum.pharmacy,
    required this.shippingInfo,
    required this.addressId,
    this.applyLoyaltyPoints,
    this.couponCode,
    this.giftCardCode,
    this.applyInsurance,
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type.getKey(),
      'shipping_info': jsonEncode(
        shippingInfo.map((e) => e.toJson()).toList(),
      ),
      'address_id': addressId,
     if(applyLoyaltyPoints != null) 'apply_loyalty_points': applyLoyaltyPoints,
     if(couponCode != null) 'coupon_code': couponCode,
     if(giftCardCode!= null) 'gift_card_code': giftCardCode,
    if(applyInsurance != null)  'apply_insurance': applyInsurance,
    };
  }
}

class PharmacyShippingInfo {
  final int ownerId;
  final String shippingType;

  const PharmacyShippingInfo({
    required this.ownerId,
    required this.shippingType,
  });

  Map<String, dynamic> toJson() {
    return {
      'owner_id': ownerId,
      'shipiing_type': shippingType,
    };
  }
}