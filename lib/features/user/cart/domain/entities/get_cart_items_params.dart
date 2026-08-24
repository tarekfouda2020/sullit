import 'package:flutter_tdd/features/user/best_sellers/data/enums/shop_type_enum.dart';

class CartParams {
  String macAddress;

  bool refresh;

  final CartTypeEnum type;

  final int? branchId;

  CartParams({
    required this.macAddress,
    required this.refresh,
     this.branchId,
    this.type = CartTypeEnum.general,
  });

  Map<String, dynamic> toJson() =>
      {"mac_address": macAddress,
        "type": type.getKey(),
       if(branchId!= null) "branch_id": branchId,
      };
}

enum CartTypeEnum {
  general,
  pharmacy,
  restaurant;

  String getKey() => switch (this) {
        general => "general",
        pharmacy => "pharmacy",
        restaurant => "restaurant",
      };
}
