enum NotifyEnum {
  emailChanged,
  emailVerified,
  order,
  orderDelivered,

  message,

}extension NotifyValue on NotifyEnum {
  String getValue() {
    switch (this) {
      case NotifyEnum.emailChanged:
        return "email_changed";
      case NotifyEnum.emailVerified:
        return "email_verified";
      case NotifyEnum.message:
        return "message";
      case NotifyEnum.order:
        return "order";
        case NotifyEnum.orderDelivered:
        return "customer_changed_order_status";
      default:
        return "";
    }
  }
}
