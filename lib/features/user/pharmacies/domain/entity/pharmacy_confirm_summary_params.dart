class PharmacyConfirmSummaryParams {
  final int id;
  final int applyLoyaltyPoints;
  final String couponCode;

  PharmacyConfirmSummaryParams({
    required this.id,
    required this.applyLoyaltyPoints,
    required this.couponCode,
  });

  Map<String, dynamic> toJson() {
    return {
      'apply_loyalty_points': applyLoyaltyPoints,
      'coupon_code': couponCode,
    };
  }
}
