class OrderPaymentOptionsParams {
  final bool refresh;
  final int? orderId;

  OrderPaymentOptionsParams({
    required this.refresh,
    this.orderId,
  });

  String paramToQuery() {
    if (orderId == null) return '';
    return '?order_id=$orderId';
  }
}
