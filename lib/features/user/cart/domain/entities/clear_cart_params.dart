
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';

class ClearCartParams {
  final String macAddress ;
 int? sellerId;
  final CartTypeEnum type;
  ClearCartParams({required this.macAddress,this.sellerId, this.type = CartTypeEnum.general});

  Map<String, dynamic> toJson ()=> {
    "mac_address":  macAddress,
    if(sellerId!=null) "seller_id" : sellerId,
    "type" :  type.getKey()
  };

}