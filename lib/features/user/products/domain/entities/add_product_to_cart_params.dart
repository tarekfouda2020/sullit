import 'dart:convert';

abstract class BaseAddProductToCartParams {
  int? variantId;
  int? branchId;
  int quantity;
  String? macAddress;
  final bool showLoader;

  BaseAddProductToCartParams({
    required this.variantId,
    required this.quantity,
    this.macAddress,
    this.branchId,
    this.showLoader = true,
  });

  Map<String, dynamic> toJson() => {
        'variant_id': variantId,
        'quantity': quantity,
        'mac_address': macAddress,
        if(branchId!= null) "branch_id": branchId
      };
}

class AddProductToCartParams extends BaseAddProductToCartParams {
  AddProductToCartParams({
    required super.variantId,
    required super.quantity,
    super.macAddress,
    super.branchId,
    super.showLoader = true,
  });
}

class PharmacyCartParams extends BaseAddProductToCartParams {

  PharmacyCartParams({
    required super.variantId,
    required super.quantity,
    super.branchId,
    super.macAddress,
    super.showLoader = true,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (branchId != null) 'branch_id': branchId,
      };
}

class RestaurantCartParams extends BaseAddProductToCartParams {
  final List<ProductOptionsParams> productOptions;
  final int? branchId;
  RestaurantCartParams({
    required this.productOptions,
    required this.branchId,
    required super.variantId,
    required super.quantity,
    super.macAddress,
    super.showLoader = true,
  });

  @override
  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> options = productOptions.map((e) => e.toJson()).toList();
    return {
      ...super.toJson(),
      'branch_id': branchId,
     if( options.isNotEmpty) 'options': jsonEncode(options),
    };
  }
}



class ProductOptionsParams{
  final int id;

  final List<int> optionsIds;

  ProductOptionsParams({required this.id, required this.optionsIds});


  Map<String,dynamic> toJson()=>{
    "id" : id,
    "option_value_ids":optionsIds
  };


}