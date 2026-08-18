
enum OrderTypeEnum {

  general,
  pharmacy;


  String getKey(){
    switch (this) {
      case OrderTypeEnum.general:
        return "general";
      case OrderTypeEnum.pharmacy:
        return "pharmacy";
      }
  }

  }

