
enum OrderTypeEnum {

  general,
  pharmacy,
  restaurant;


  String getKey(){
    switch (this) {
      case OrderTypeEnum.general:
        /// default in back-end "general"
        return "";
      case OrderTypeEnum.pharmacy:
        return "pharmacy";
        case OrderTypeEnum.restaurant:
        return "restaurant";
      }
  }

  }

