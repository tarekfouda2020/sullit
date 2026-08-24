enum ShopTypeEnum {
  merchant,
  pharmacy,
  restaurant;

  String getKey() => switch (this) {
        merchant => "merchant",
        pharmacy => "pharmacy",
         restaurant => "restaurant",
      };
}
