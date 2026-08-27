import 'dart:convert';

class InstoreOrderPreviewParams {
  final int sellerId;
  final String? couponCode;
  final String? giftCardCode;
  final bool? loyaltyPointsApplied;
  final double? latitude;
  final double? longitude;
  final List<InstoreCartParams> items;

  InstoreOrderPreviewParams({
    required this.sellerId,
    required this.couponCode,
    required this.giftCardCode,
    required this.loyaltyPointsApplied,
    this.latitude,
    this.longitude,
    required this.items,
  });

  Map<String, dynamic> toJson() {
    return {
      "seller_id": sellerId,
      "latitude": latitude,
      "longitude": longitude,
      "items": jsonEncode(items.map((e) => e.toJson()).toList()),
      if (couponCode != null && couponCode!.trim().isNotEmpty)
        "coupon_code": couponCode,
      if (giftCardCode != null && giftCardCode!.trim().isNotEmpty)
        "gift_card_code": giftCardCode,
      if(loyaltyPointsApplied!= null) "loyalty_points_applied": loyaltyPointsApplied! ? 1 : 0 ,
    };
  }
}

class InstoreCartParams {
  final int variantId;
  final int qnt;

  InstoreCartParams({required this.variantId, required this.qnt});

  Map<String, dynamic> toJson() {
    return {
      "variant_id": variantId,
      "qty": qnt,
    };
  }
}
