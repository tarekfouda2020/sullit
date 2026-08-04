enum ShopTypeEnum {
  merchant,
  pharmacy;

  String getKey() => switch (this) {
        merchant => "merchant",
        pharmacy => "pharmacy",
      };
}
