import 'dart:convert';
import 'dart:io';

import 'package:flutter_tdd/features/user/cart/data/enum/delivery_type_enum.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

import '../../../cart/domain/models/delivery_instruction_model.dart';

class PharmacyCreateOrderParams {
  int? addressId;
  final int? shopId;
  final String? paymentOption;

  final List<PharmacyShippingInfo> shippingInfo;

  final int? applyLoyaltyPoints;
  final String? couponCode;
  final String? giftCardCode;

  final List<File>? prescriptionAttachments;

  final int? insuranceCompanyId;
  final List<File>? insuranceAttachments;
  final bool? applyInsurance;

  final List<DeliveryInstructionModel>? instructions;

  final String? driverNotes;
  final String? pickerNotes;

  final bool? savedPrescriptions;

  final File? identityDocumentFile;

  final String? additionalInfo;
  final String? requestedBy;
  int? shopBranchId;
  final bool? allowReplacement;
  final List<int>? prescriptionAttachmentIds;
  DeliveryTypeEnum? shippingType;

  PharmacyCreateOrderParams({
    this.paymentOption,
    required this.shippingInfo,
    this.shopId,
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
    this.savedPrescriptions,
    this.identityDocumentFile,
    this.additionalInfo,
    this.requestedBy,
    this.shopBranchId,
    this.allowReplacement,
    this.prescriptionAttachmentIds,
    this.shippingType,
  });

  Map<String, dynamic> toJson() {
    return {
      if (shopId != null) 'shop_id': shopId,
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
      if (insuranceCompanyId != null)
        'insurance_company_id': insuranceCompanyId,
      if (applyInsurance != null)
        'apply_insurance': applyInsurance == true ? 1 : 0,
      if (driverNotes?.isNotEmpty == true) 'driver_notes': driverNotes,
      if (pickerNotes?.isNotEmpty == true) 'picker_notes': pickerNotes,
      if (savedPrescriptions != null)
        'saved_prescriptions': savedPrescriptions == true ? 1 : 0,
      if (identityDocumentFile != null)
        'identity_document_file': identityDocumentFile,
      if (additionalInfo?.isNotEmpty == true) 'additional_info': additionalInfo,
      if (requestedBy?.isNotEmpty == true) 'requested_by': requestedBy,
      if (shopBranchId != null) 'shop_branch_id': shopBranchId,
      if (allowReplacement != null)
        'allow_replacement': allowReplacement == true ? 1 : 0,
      if (shippingType != null) 'shipping_type': shippingType!.getEnumValue(),
      if (prescriptionAttachmentIds?.isNotEmpty == true)
        ..._prescriptionAttachmentIds,
      if (instructions != null && instructions!.isNotEmpty)
        ..._driverInstructions,
      if (prescriptionAttachments != null &&
          prescriptionAttachments!.isNotEmpty)
        ..._prescriptionAttachments,
      if (insuranceAttachments != null && insuranceAttachments!.isNotEmpty)
        ..._insuranceAttachments,
    };
  }

  Map<String, int> get _prescriptionAttachmentIds {
    final Map<String, int> map = <String, int>{};

    if (prescriptionAttachmentIds == null ||
        prescriptionAttachmentIds!.isEmpty) {
      return map;
    }

    for (int i = 0; i < prescriptionAttachmentIds!.length; i++) {
      map["prescription_attachment_ids[$i]"] = prescriptionAttachmentIds![i];
    }

    return map;
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

  void setShippingInfo(List<PharmacyShippingInfo> value) {
    shippingInfo
      ..clear()
      ..addAll(value);
  }

  void setAddressId(int? id) {
    addressId = id;
  }

  void setShippingType(DeliveryTypeEnum type) {
    shippingType = type;
  }

  void setShopBranchId(int? id) {
    shopBranchId = id;
  }

  Map<String, dynamic> toPrescriptionOrderJson() {
    return {
      if (shopId != null) 'shop_id': shopId,
      if (addressId != null) 'address_id': addressId,
      if (shippingType != null) 'shipping_type': shippingType!.getEnumValue(),
      if (shopBranchId != null) 'shop_branch_id': shopBranchId,
      if (shippingInfo.isNotEmpty)
        'shipping_info': jsonEncode(
          shippingInfo.map((e) => e.toJson()).toList(),
        ),
      if (insuranceCompanyId != null)
        'insurance_company_id': insuranceCompanyId,
      if (applyInsurance != null)
        'apply_insurance': applyInsurance == true ? 1 : 0,
      if (additionalInfo?.isNotEmpty == true) 'additional_info': additionalInfo,
      if (identityDocumentFile != null)
        'identity_document_file': identityDocumentFile,
      if (savedPrescriptions != null)
        'saved_prescriptions': savedPrescriptions == true ? 1 : 0,
      if (allowReplacement != null)
        'allow_replacement': allowReplacement == true ? 1 : 0,
      if (requestedBy?.isNotEmpty == true) 'requested_by': requestedBy,
      if (insuranceAttachments != null && insuranceAttachments!.isNotEmpty)
        ..._insuranceAttachments,
      if (prescriptionAttachments != null &&
          prescriptionAttachments!.isNotEmpty)
        ..._prescriptionAttachments,
      if (prescriptionAttachmentIds?.isNotEmpty == true)
        ..._prescriptionAttachmentIds,
    };
  }
}
