class OrderPaymentOptionsParams {
  final bool refresh;
  final int? orderId;
  final int? sellerId;

  OrderPaymentOptionsParams({
    required this.refresh,
    this.orderId,
    this.sellerId,
  });


  Map<String,dynamic> toJson() =>{
    if(sellerId!=null) "sellerId":sellerId,
    if(orderId!=null) "orderId":orderId,
  };


}
