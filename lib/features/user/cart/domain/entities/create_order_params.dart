// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';

class CreateOrderParams {
  String paymentOption;

  String additionalInfo;

  CreateOrderParams({
    required this.paymentOption,
    required this.additionalInfo,
  });

  Map<String, dynamic> toJson ()=> {
    "payment_option": paymentOption,
    "additional_info": additionalInfo,
  };

  bool isSuccess (dynamic json)=> json["key"] == "success" ;


}
