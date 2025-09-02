import 'dart:developer';

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

  Map<String, dynamic> toJson() {
    return {
      "product_id": productId,
      "rating": rating,
      if(comment!=null)"comment": comment,
    };
  }
}
