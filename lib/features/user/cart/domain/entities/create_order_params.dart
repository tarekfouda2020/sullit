// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';

class CreateOrderParams {
  final String paymentOption;

  String additionalInfo;
  String giftCardCode;
  String driverNotes;
  String pickerNotes;
  final int allowReplacement;
  final List<DeliveryInstructionModel>? instructions;

  CreateOrderParams({
    required this.paymentOption,
    required this.additionalInfo,
    required this.allowReplacement,
    this.giftCardCode = "",
    this.driverNotes = "",
    this.pickerNotes = "",
    this.instructions,
  });

  Map<String, int> get _driverInstructions {
    final Map<String, int> map = <String, int>{};

    if (instructions == null ||
        (instructions ?? <DeliveryInstructionModel>[]).isEmpty) return map;

    for (int i = 0; i < instructions!.length; i++) {
      map["delivery_instructions[$i]"] = instructions![i].id;
    }
    return map;
  }

  Map<String, dynamic> toJson() => {
        "payment_option": paymentOption,
        "allow_replacement": allowReplacement,
        if (additionalInfo != "") "additional_info": additionalInfo,
        if (giftCardCode.trim().isNotEmpty) "gift_card_code": giftCardCode,
        if (driverNotes.trim().isNotEmpty) "driver_notes": driverNotes,
        if (pickerNotes.trim().isNotEmpty) "picker_notes": pickerNotes,
        if (_driverInstructions.isNotEmpty) ..._driverInstructions
      };

  bool isSuccess(dynamic json) => json["key"] == "success";
}
