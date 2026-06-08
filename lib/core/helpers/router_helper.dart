import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:injectable/injectable.dart';

import '../routes/router_imports.gr.dart';

@lazySingleton
class RouterHelper {
  final AppRouter appRoute = AppRouter(getIt<GlobalContext>().navigationKey);

  bool trackOrderOpened(int orderId) {
    try {
      final RouteData topRoute = appRoute.current;
      if (topRoute.name == TrackOrderRoute.name) {
        final TrackOrderRouteArgs args = topRoute.argsAs<TrackOrderRouteArgs>();
        final int currentId = args.orderId;
        if (currentId == orderId) {
          return true;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
