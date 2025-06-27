import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_details/order_details_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_summary/order_summary_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/purchased_history/purchased_history_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/retrieve_order/retrieve_order_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/return_orders/return_orders_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/track_order/track_order_imports.dart';

const List<AutoRoute> purchasingRoute = [
  AdaptiveRoute(page: OrderSummary),
  AdaptiveRoute(page: PurchasedHistory),
  AdaptiveRoute(page: ReturnOrders),
  AdaptiveRoute(page: TrackOrder),
  AdaptiveRoute(page: RetrieveOrder),
  AdaptiveRoute(page: OrderDetailsPage),

];
