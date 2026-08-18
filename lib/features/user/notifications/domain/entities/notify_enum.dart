enum NotifyEnum {
  emailChanged,
  emailVerified,
  order,
  customerChangeOrderStatus,
  shareholderProducts,
  offerVipProducts,
  offerNewArrival,
  offerOnSale,
  newLogin,

  message;
}

extension NotifyValue on NotifyEnum {
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
      case NotifyEnum.customerChangeOrderStatus:
        return "customer_changed_order_status";
      case NotifyEnum.shareholderProducts:
        return "offer_shareholder_products";
      case NotifyEnum.offerVipProducts:
        return "offer_vip_products";
      case NotifyEnum.offerNewArrival:
        return "offer_new_arrival";
      case NotifyEnum.offerOnSale:
        return "offer_on_sale";
      case NotifyEnum.newLogin:
        return "new_login";
      default:
        return "";
    }
  }
}
