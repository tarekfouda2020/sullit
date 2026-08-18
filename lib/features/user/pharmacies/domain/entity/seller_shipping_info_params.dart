class SellerShippingInfoParams {
  final int sellerId;
  final int addressId;
  final int? branchId;

  SellerShippingInfoParams({
    required this.sellerId,
    required this.addressId,
     this.branchId,
  });


  Map<String,dynamic> toJson() => {
    "seller_id" : sellerId,
    "address_id" : addressId,
    if(branchId!= null)"branch_id" : branchId,
  };

}
