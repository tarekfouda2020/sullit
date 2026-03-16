import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/router_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeepLinkService {
  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  void init() {
    _initDeepLinks();
  }

  Future<void> _initDeepLinks() async {
    // Check initial link if the app was opened from a link (cold start)
    try {
      final initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        _handleDeepLink(initialUri);
      }
    } catch (e) {
      // Handle error if needed
    }

    // Listen for links while the app is in background/foreground
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      _handleDeepLink(uri);
    }, onError: (err) {
      // Handle error if needed
    });
  }

  void _handleDeepLink(Uri uri) {
    // Example: https://suliit.com/shops/123 or suliit://shops/123
    if (uri.pathSegments.contains('shops')) {
      final index = uri.pathSegments.indexOf('shops');
      if (index + 1 < uri.pathSegments.length) {
        final productIdStr = uri.pathSegments[index + 1];
        final productId = int.tryParse(productIdStr);
        if (productId != null) {
          _navigateToProduct(productId);
        }
      }
    }
    // Also handle query parameters if needed: ?id=123
    else if (uri.queryParameters.containsKey('id')) {
      final productId = int.tryParse(uri.queryParameters['id']!);
      if (productId != null) {
        _navigateToProduct(productId);
      }
    }
  }

  bool isAppReady = false;
  int? pendingProductId;

  void setAppReady() {
    isAppReady = true;
    if (pendingProductId != null) {
      _navigateToProduct(pendingProductId!);
      pendingProductId = null;
    }
  }

  void _navigateToProduct(int productId) {
    if (!isAppReady) {
      pendingProductId = productId;
      return;
    }
    final router = getIt<RouterHelper>().appRoute;
    router.push(ProductDetailsRoute(productId: productId, isResale: false, isFav: false));
  }

  String generateProductLink(int productId) {
    // Return the universal link for sharing
    return "https://web.staging.mushrifcoop.com/shops/$productId?platform=mobile";
  }

  void dispose() {
    _linkSubscription?.cancel();
  }
}
