
enum OrderTypeEnum {

  general,
  pharmacy,
  restaurant;


  String getKey(){
    switch (this) {
      case OrderTypeEnum.general:
        return "general";
      case OrderTypeEnum.pharmacy:
        return "pharmacy";
        case OrderTypeEnum.restaurant:
        return "restaurant";
      }
  }

  }

