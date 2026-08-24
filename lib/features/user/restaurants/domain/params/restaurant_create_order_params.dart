import 'dart:convert';

import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

class RestaurantCreateOrderParams {
  final String? paymentOption;
  final int? wallet;
  final List<PharmacyShippingInfo> shippingInfo;
  final int? addressId;
  final int? applyLoyaltyPoints;
  final String? couponCode;
  final String? giftCardCode;
  final List<DeliveryInstructionModel>? instructions;
  final String? driverNotes;
  final String? pickerNotes;
  final bool? allowReplacement;

  RestaurantCreateOrderParams({
    this.paymentOption,
    this.wallet,
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
      if (wallet != null) 'wallet': wallet,
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
      map['delivery_instructions[$i]'] = instructions![i].id;
    }
    return map;
  }
}
