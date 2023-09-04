class SendReviewParams {
  int orderId;
  int? productId;
  int? rating;
  String? comment;

  SendReviewParams({
    required this.orderId,
    this.productId,
    this.rating,
    this.comment,
  });

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "rating": rating,
        "comment": comment,
      };
}
