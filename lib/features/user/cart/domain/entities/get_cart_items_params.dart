import 'package:flutter_tdd/features/user/best_sellers/data/enums/shop_type_enum.dart';

class CartParams {
  String macAddress;

  bool refresh;

  final CartTypeEnum type;

  CartParams({
    required this.macAddress,
    required this.refresh,
    this.type = CartTypeEnum.general,
  });

  Map<String, dynamic> toJson() =>
      {"mac_address": macAddress, "type": type.getKey()};
}

enum CartTypeEnum {
  general,
  pharmacy;

  String getKey() => switch (this) {
        general => "general",
        pharmacy => "pharmacy",
      };
}
