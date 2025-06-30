import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/cart_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_payment/cart_payment_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/conformation/conformation_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/receiving_method/receiving_method_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/receiving_method/views/delivery/delivery_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/receiving_method/views/shipping/shipping_imports.dart';

const List<AutoRoute> cartRoute = [
  AdaptiveRoute(page: Cart),
  // AdaptiveRoute(page: Delivery),
  AdaptiveRoute(page: CartPayment),
  // AdaptiveRoute(page: Shipping),
  AdaptiveRoute(page: Confirmation),
  AdaptiveRoute(page: ReceivingMethod),
];
