// lib/core/services/auth_guard.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/extensions/auth_extension.dart';
import 'package:flutter_tdd/core/helpers/route_helpers/pending_navigation_service.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthGuard {
  final PendingNavigationService _pending = PendingNavigationService.instance;

  bool requireAuth({
    required BuildContext context,
    PageRouteInfo? pendingRoute,
    VoidCallback? onAuthenticated,
  }) {
    bool isAuth = context.isAuth;
    if (isAuth) {
      onAuthenticated?.call();
      return true;
    }
    if (pendingRoute != null) {
      _pending.save(pendingRoute);
    }
    return false;
  }
}