abstract class BaseAddProductToCartParams {
  int? variantId;

  int quantity;

  String? macAddress;
  final bool showLoader;
  BaseAddProductToCartParams({
    required this.variantId,
    required this.quantity,
    this.macAddress,
    this.showLoader = true,
  });

  Map<String, dynamic> toJson() => {
        'variant_id': variantId,
        'quantity': quantity,
        'mac_address': macAddress,
      };
}

class AddProductToCartParams extends BaseAddProductToCartParams {
  AddProductToCartParams({
    required super.variantId,
    required super.quantity,
    super.macAddress,
    super.showLoader = true,
  });
}

class PharmacyCartParams extends BaseAddProductToCartParams {
  final int? branchId;

  PharmacyCartParams({
    required super.variantId,
    required super.quantity,
     this.branchId,
    super.macAddress,
    super.showLoader = true,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if(branchId!= null) 'branch_id': branchId,
      };
}
