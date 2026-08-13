import 'dart:convert';

import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';

class RestaurantCreateOrderParams {
  String? paymentOption;
  final List<RestaurantShippingInfo> shippingInfo;
  int? addressId;
  int? applyLoyaltyPoints;
  String? couponCode;
  String? giftCardCode;
  List<DeliveryInstructionModel>? instructions;
  String? driverNotes;
  String? pickerNotes;
  bool? allowReplacement;

  RestaurantCreateOrderParams({
    this.paymentOption,
    required this.shippingInfo,
    this.addressId,
    this.applyLoyaltyPoints,
    this.couponCode,
    this.giftCardCode,
    this.instructions,
    this.driverNotes,
    this.pickerNotes,
    this.allowReplacement,
  });

  Map<String, dynamic> toJson() {
    return {
      if (paymentOption != null) 'payment_option': paymentOption,
      if (shippingInfo.isNotEmpty)
        'shipping_info': jsonEncode(
          shippingInfo.map((e) => e.toJson()).toList(),
        ),
      if (addressId != null) 'address_id': addressId,
      if (applyLoyaltyPoints != null)
        'apply_loyalty_points': applyLoyaltyPoints,
      if (couponCode != null) 'coupon_code': couponCode,
      if (giftCardCode != null) 'gift_card_code': giftCardCode,
      if (driverNotes?.isNotEmpty == true) 'driver_notes': driverNotes,
      if (pickerNotes?.isNotEmpty == true) 'picker_notes': pickerNotes,
      if (allowReplacement != null)
        'allow_replacement': allowReplacement == true ? 1 : 0,
      if (instructions != null && instructions!.isNotEmpty)
        ..._deliveryInstructions,
    };
  }

  Map<String, int> get _deliveryInstructions {
    final Map<String, int> map = <String, int>{};
    if (instructions == null || instructions!.isEmpty) {
      return map;
    }
    for (int i = 0; i < instructions!.length; i++) {
      map["delivery_instructions[$i]"] = instructions![i].id;
    }
    return map;
  }
}

class RestaurantShippingInfo {
  final int ownerId;
  final String shippingType;

  const RestaurantShippingInfo({
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