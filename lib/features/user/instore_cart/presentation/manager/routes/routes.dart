import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/user/instore_cart/presentation/pages/instore_cart_page/instore_cart_page_imports.dart';
import 'package:flutter_tdd/features/user/instore_cart/presentation/pages/instore_checkout/instore_checkout_imports.dart';
import 'package:flutter_tdd/features/user/instore_cart/presentation/pages/instore_confirm_buying/instore_confirm_buying_imports.dart';

const List<AutoRoute> instoreCartRoute = [
  AdaptiveRoute(page: InstoreCartPage),
  AdaptiveRoute(page: InstoreCheckout),
  AdaptiveRoute(page: InstoreConfirmBuying),
];
