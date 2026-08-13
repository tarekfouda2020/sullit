import 'package:auto_route/annotations.dart';
import '../../pages/restaurants/restaurants_imports.dart';
import '../../pages/restaurant_cart/restaurant_cart_imports.dart';
import '../../pages/restaurant_address/restaurant_address_imports.dart';
import '../../pages/restaurant_check_out/restaurant_check_out_imports.dart';
import '../../pages/restaurant_order_success/restaurant_order_success_imports.dart';

const List<AutoRoute> restaurantRoutes = [
  AdaptiveRoute(page: Restaurants),
  AdaptiveRoute(page: RestaurantCart),
  AdaptiveRoute(page: RestaurantAddress),
  AdaptiveRoute(page: RestaurantCheckOut),
  AdaptiveRoute(page: RestaurantOrderSuccess),
];
