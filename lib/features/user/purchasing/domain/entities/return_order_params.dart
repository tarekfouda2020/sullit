class ReturnOrderParams {
  int orderId;
  int? addressId;
  dynamic? products;
  String? reason;

  ReturnOrderParams({
    required this.orderId,
    this.addressId,
    this.products,
    this.reason,
  });

  Map<String, dynamic> toJson() => {
        "address_id": addressId,
        "products": products,
        "retrieval_reason": reason,
      };
}
