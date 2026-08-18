import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';

class PharmacyConfirmOrderParams {
  final int orderId;
  final String? paymentOption;
  final int? wallet;
  final int? applyLoyaltyPoints;
  final String? couponCode;
  final List<DeliveryInstructionModel>? instructions;
  final String? driverNotes;
  final String? pickerNotes;

  PharmacyConfirmOrderParams({
    required this.orderId,
    this.paymentOption,
    this.wallet,
    this.applyLoyaltyPoints,
    this.couponCode,
    this.instructions,
    this.driverNotes,
    this.pickerNotes,
  });

  Map<String, dynamic> toJson() {
    return {
      if (paymentOption != null) 'payment_option': paymentOption,
      if (wallet != null) 'wallet': wallet,
      if (applyLoyaltyPoints != null) 'apply_loyalty_points': applyLoyaltyPoints,
      if (couponCode != null) 'coupon_code': couponCode,
      ..._driverInstructions,
      if (driverNotes != null && driverNotes!.isNotEmpty) 'driver_notes': driverNotes,
      if (pickerNotes != null && pickerNotes!.isNotEmpty) 'picker_notes': pickerNotes,
    };
  }

  Map<String, int> get _driverInstructions {
    final Map<String, int> map = <String, int>{};
    if (instructions == null || instructions!.isEmpty) return map;
    for (int i = 0; i < instructions!.length; i++) {
      map['delivery_instructions[$i]'] = instructions![i].id;
    }
    return map;
  }
}
