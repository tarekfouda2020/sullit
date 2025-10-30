// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';

class CreateOrderParams {
  final String paymentOption;

  String additionalInfo;
  String? giftCardCode;
  final int allowReplacement;

  CreateOrderParams({
    required this.paymentOption,
    required this.additionalInfo,
    required this.allowReplacement,
    this.giftCardCode,
  });

  Map<String, dynamic> toJson ()=> {
    "payment_option": paymentOption,
    "allow_replacement": allowReplacement,
    if(additionalInfo != "")"additional_info": additionalInfo,
    if(giftCardCode!=null && giftCardCode != "")"gift_card_code": giftCardCode,
  };

  bool isSuccess (dynamic json)=> json["key"] == "success" ;


}
