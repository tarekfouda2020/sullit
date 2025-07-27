class PayGiftCardSubscribeParams {
  final String paymentMethod;
  final int id;

  PayGiftCardSubscribeParams({
    required this.paymentMethod,
    required this.id,
  });

  Map<String, dynamic> toJson ()=> {
    "payment_method" : paymentMethod,
  };

}
