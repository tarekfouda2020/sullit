import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_order_preview_params.dart';

class InstoreCreateOrderParams {
  final InstoreOrderPreviewParams preview;
  final String paymentOption;

  InstoreCreateOrderParams({
    required this.preview,
    required this.paymentOption,
  });

  Map<String, dynamic> toJson() {
    return {
      ...preview.toJson(),
      'payment_option': paymentOption,
    };
  }
}
