class PurchasePackageParams {
  int id;
  String? payMethod;
  PurchasePackageParams({required this.id, required this.payMethod});

  Map<String, dynamic> toJson() => {
        if (payMethod != null) 'payment_option': payMethod,
      };
}
