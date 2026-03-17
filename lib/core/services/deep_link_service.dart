import 'dart:async';
import 'dart:developer';

import 'package:app_links/app_links.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/router_helper.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:injectable/injectable.dart';

import '../constants/app_constants.dart';

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
    // Example: https://suliit.com/products/123 or suliit://products/123
    if (uri.pathSegments.contains('products')) {
      final index = uri.pathSegments.indexOf('products');
      if (index + 1 < uri.pathSegments.length) {
        final productIdStr = uri.pathSegments[index + 1];
        final productId = int.tryParse(productIdStr);
        if (productId != null) {
          _navigateToProduct(productId);
        }
      }
    }
    // Handle cart share link: https://suliit.com/cart?token=xxxx
    else if (uri.pathSegments.contains('cart') && uri.queryParameters.containsKey('token')) {
      final token = uri.queryParameters['token'];
      if (token != null && token.isNotEmpty) {
        _importCart(token);
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
  String? pendingCartToken;

  void setAppReady() {
    isAppReady = true;
    if (pendingProductId != null) {
      _navigateToProduct(pendingProductId!);
      pendingProductId = null;
    }
    if (pendingCartToken != null) {
      _importCart(pendingCartToken!);
      pendingCartToken = null;
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

  void _importCart(String token) {
    if (!isAppReady) {
      pendingCartToken = token;
      return;
    }
    final ctx = getIt<GlobalContext>().context();
    getIt<CartHelper>().importCart(ctx, token);
  }

  String generateProductLink(int productId) {
    // Return the universal link for sharing
    return "${AppConstants.instance.baseShareLink}/products/$productId?platform=mobile";
  }

  void dispose() {
    _linkSubscription?.cancel();
  }
}
