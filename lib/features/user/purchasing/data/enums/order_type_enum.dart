
enum OrderTypeEnum {

  merchant,
  pharmacy,
  restaurant;


  String getKey(){
    switch (this) {
      case OrderTypeEnum.merchant:
        /// default in back-end "merchant"
        return "merchant";
      case OrderTypeEnum.pharmacy:
        return "pharmacy";
        case OrderTypeEnum.restaurant:
        return "restaurant";
      }
  }

  }

