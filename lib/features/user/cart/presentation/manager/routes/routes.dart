import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/cart_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_confirm_buying/cart_confirm_buying_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_payment/cart_payment_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/receiving_method/receiving_method_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/shipping/shipping_imports.dart';

import '../../pages/confirmation/confirmation_imports.dart';
import '../../pages/delivery/delivery_imports.dart';

const List<AutoRoute> cartRoute = [
  AdaptiveRoute(page: Cart),
  AdaptiveRoute(page: Delivery),
  AdaptiveRoute(page: CartPayment),
  AdaptiveRoute(page: Shipping),
  AdaptiveRoute(page: Confirmation),
  AdaptiveRoute(page: ReceivingMethod),
  AdaptiveRoute(page: CartConfirmBuying),
];
