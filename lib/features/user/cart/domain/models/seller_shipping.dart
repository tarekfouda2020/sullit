import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/pick_up.dart';

class SellerShipping extends BaseDomainModel {
  String name;
  List<CartItem> items;
  bool physical;
  bool activePickup;
  Pickup pickup;
  bool activeDelivery;
  String deliveryMessage;
  Delivery? delivery;
  int ownerId;
  int deliveryType = 0;

  SellerShipping({
   required this.name,
   required this.items,
   required this.physical,
   required this.activePickup,
   required this.pickup,
   required this.activeDelivery,
   required this.delivery,
   required this.ownerId,
   required this.deliveryMessage,
  });
}
