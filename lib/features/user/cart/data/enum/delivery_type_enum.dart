enum DeliveryTypeEnum {

  delivery,
  pickUp;

  String getEnumValue() {
  switch (this) {
    case DeliveryTypeEnum.delivery:
      return "DELIVERY";
    case DeliveryTypeEnum.pickUp:
      return "LOCAL_PICKUP";
    default:
      return "LOCAL_PICKUP";
  }
}

  static String getDeliveryMethod(int index) {
    switch (index) {
      case 0:
        return "DELIVERY";
      case 1:
        return "LOCAL_PICKUP";
      default:
        return "LOCAL_PICKUP";
    }
  }

}

