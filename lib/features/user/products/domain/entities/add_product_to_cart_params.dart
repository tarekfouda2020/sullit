class AddProductToCartParams {
  int? variantId;

  int quantity;

  String? macAddress;
 final bool showLoader;
  AddProductToCartParams({
    required this.variantId,
    required this.quantity,
    this.macAddress,
    this.showLoader = true,
  });

  Map<String, dynamic> toJson ()=> {
    'variant_id': variantId,
    'quantity': quantity,
    'mac_address': macAddress,
  };
}
