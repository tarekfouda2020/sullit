class ApplyGiftCardParams {
  String giftCardCode;

  ApplyGiftCardParams({
    required this.giftCardCode,
  });

  Map<String, dynamic> toJson() {
    return {
      'gift_card_code': giftCardCode,
    };
  }
}
