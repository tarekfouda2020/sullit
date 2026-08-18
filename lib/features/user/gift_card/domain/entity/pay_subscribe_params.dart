class PaySubscribeParams {
  final String paymentMethod;
  final int id;

  PaySubscribeParams({
    required this.paymentMethod,
    required this.id,
  });

  Map<String, dynamic> toJson() => {
        "payment_method": paymentMethod,
      };
}
