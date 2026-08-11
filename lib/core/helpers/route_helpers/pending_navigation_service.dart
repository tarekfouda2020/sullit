// lib/core/services/pending_navigation_service.dart

import 'package:auto_route/auto_route.dart';

class PendingNavigationService {

  PendingNavigationService._();


  static final PendingNavigationService instance = PendingNavigationService._();

  PageRouteInfo? _pendingRoute;

  void save(PageRouteInfo route) => _pendingRoute = route;

  PageRouteInfo? get pending => _pendingRoute;

  bool get hasPending => _pendingRoute != null;

  void clear() => _pendingRoute = null;
}