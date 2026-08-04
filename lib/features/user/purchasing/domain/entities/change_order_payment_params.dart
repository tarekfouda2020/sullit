class ChangeOrderPaymentParams {
  final String payMethod;
  final int orderId;
  ChangeOrderPaymentParams(this.orderId, {required this.payMethod});

  Map<String, dynamic> toJson() => {"payment_option": payMethod};
}
