import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/router_helper.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/product_details_page_route_params.dart';
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
    else if (uri.pathSegments.contains('cart') &&
        uri.queryParameters.containsKey('token')) {
      final token = uri.queryParameters['token'];
      if (token != null && token.isNotEmpty) {
        _importCart(token);
      }
    } else if (uri.pathSegments.contains('shops')) {
      final index = uri.pathSegments.indexOf('shops');
      if (index + 1 < uri.pathSegments.length) {
        final shopId = int.tryParse(uri.pathSegments[index + 1]);
        if (shopId != null) {
          final merchant =
              int.tryParse(uri.queryParameters['merchant'] ?? '1') ?? 1;
          _navigateToShop(shopId, merchant);
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
  String? pendingCartToken;
  int? pendingShopId;
  int? pendingShopMerchant;

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
    if (pendingShopId != null && pendingShopMerchant != null) {
      _navigateToShop(pendingShopId!, pendingShopMerchant!);
      pendingShopId = null;
      pendingShopMerchant = null;
    }
  }

  void _navigateToProduct(int productId) {
    if (!isAppReady) {
      pendingProductId = productId;
      return;
    }
    final router = getIt<RouterHelper>().appRoute;
    router.push(ProductDetailsRoute(
      params: ProductDetailsPageRouteParams(productId: productId),
    ));
  }

  void _importCart(String token) {
    if (!isAppReady) {
      pendingCartToken = token;
      return;
    }
    final ctx = getIt<GlobalContext>().context();
    getIt<CartHelper>().importCart(ctx, token);
  }

  void _navigateToShop(int shopId, int merchant) {
    if (!isAppReady) {
      pendingShopId = shopId;
      pendingShopMerchant = merchant;
      return;
    }
    final router = getIt<RouterHelper>().appRoute;
    switch (merchant) {
      case 0:
        router.push(PharmacyDetailsRoute(
          pharmacyId: shopId,
          type: CartTypeEnum.pharmacy,
        ));
      case 1:
        router.push(SellerProductsPageRoute(shopId: shopId));
      case 2:
        router.push(PharmacyDetailsRoute(
          pharmacyId: shopId,
          type: CartTypeEnum.restaurant,
        ));
      default:
        router.push(SellerProductsPageRoute(shopId: shopId));
    }
  }

  String generateProductLink(int productId) {
    // Return the universal link for sharing
    return "${AppConstants.instance.baseShareLink}/products/$productId?platform=mobile";
  }

  /// `merchant`: 0 pharmacy, 1 seller/merchant shop, 2 restaurant
  String generateShopLink(int shopId, {required int merchant}) {
    return "${AppConstants.instance.baseShareLink}/shops/$shopId?platform=mobile&merchant=$merchant";
  }

  void dispose() {
    _linkSubscription?.cancel();
  }
}
