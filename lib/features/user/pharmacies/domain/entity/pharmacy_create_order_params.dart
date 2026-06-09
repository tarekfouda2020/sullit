
import 'dart:convert';
import 'dart:io';

import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

import '../../../cart/domain/models/delivery_instruction_model.dart';

class PharmacyCreateOrderParams {
  final String? paymentOption;

  final List<PharmacyShippingInfo> shippingInfo;

  final int? addressId;
  final int? applyLoyaltyPoints;
  final String? couponCode;
  final String? giftCardCode;

  final List<File>? prescriptionAttachments;

  final int? insuranceCompanyId;
  final List<File>? insuranceAttachments;
  final int? applyInsurance;

  final List<DeliveryInstructionModel>? instructions;

  final String? driverNotes;
  final String? pickerNotes;

  PharmacyCreateOrderParams({
     this.paymentOption,
    required this.shippingInfo,
    this.addressId,
    this.applyLoyaltyPoints,
    this.couponCode,
    this.giftCardCode,
    this.prescriptionAttachments,
    this.insuranceCompanyId,
    this.insuranceAttachments,
    this.applyInsurance,
    this.instructions,
    this.driverNotes,
    this.pickerNotes,
  });

  Map<String, dynamic> toJson() {
    return {
      if(paymentOption != null) 'payment_option': paymentOption,
      if(shippingInfo.isNotEmpty)
      'shipping_info': jsonEncode(
        shippingInfo.map((e) => e.toJson()).toList(),
      ),

      if (addressId != null) 'address_id': addressId,
      if (applyLoyaltyPoints != null)
        'apply_loyalty_points': applyLoyaltyPoints,
      if (couponCode != null) 'coupon_code': couponCode,
      if (giftCardCode != null) 'gift_card_code': giftCardCode,

      if (prescriptionAttachments != null && prescriptionAttachments!.isNotEmpty)
        ..._prescriptionAttachments,

      if (insuranceAttachments != null && insuranceAttachments!.isNotEmpty)
        ..._insuranceAttachments,

      if (insuranceCompanyId != null)
        'insurance_company_id': insuranceCompanyId,

      if (applyInsurance != null)
        'apply_insurance': applyInsurance,

      if (instructions != null && instructions!.isNotEmpty)
        ..._driverInstructions,

      if (driverNotes != null && driverNotes!.isNotEmpty)
        'driver_notes': driverNotes,

      if (pickerNotes != null && pickerNotes!.isNotEmpty)
        'picker_notes': pickerNotes,
    };
  }





  Map<String, File> get _insuranceAttachments {
    final Map<String, File> map = <String, File>{};

    if (insuranceAttachments == null ||
        (insuranceAttachments ?? <File>[]).isEmpty) {
      return map;
    }

    for (int i = 0; i < insuranceAttachments!.length; i++) {
      map["insurance_attachments[$i]"] = insuranceAttachments![i];
    }
    return map;
  }

  Map<String, File> get _prescriptionAttachments {
    final Map<String, File> map = <String, File>{};

    if (prescriptionAttachments == null ||
        (prescriptionAttachments ?? <File>[]).isEmpty) {
      return map;
    }

    for (int i = 0; i < prescriptionAttachments!.length; i++) {
      map["prescription_attachments[$i]"] = prescriptionAttachments![i];
    }
    return map;
  }


  Map<String, int> get _driverInstructions {
    final Map<String, int> map = <String, int>{};

    if (instructions == null ||
        (instructions ?? <DeliveryInstructionModel>[]).isEmpty) {
      return map;
    }

    for (int i = 0; i < instructions!.length; i++) {
      map["delivery_instructions[$i]"] = instructions![i].id;
    }
    return map;
  }

}

