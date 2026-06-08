import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/compare/compare_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/downloads/downloads_import.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/home_main_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/popular_products/popular_products_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/product_details/product_details_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/seller_products/seller_products_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/seller_products/widgets/seller_products_widgets_imports.dart';

import '../../../../../seller/products/presentation/pages/seller_products/seller_products_imports.dart';
import '../../pages/all_products_page/all_product_page_imports.dart';

const List<AutoRoute> productsRoute = [
  AdaptiveRoute(page: Compare),
  AdaptiveRoute(page: Downloads),
  AdaptiveRoute(page: HomeMain),
  AdaptiveRoute(page: ProductDetails),
  AdaptiveRoute(page: PopularProducts),
  AdaptiveRoute(page: AllProductPage),
  AdaptiveRoute(page: SellerProductsPage),
  AdaptiveRoute(page: SellerDetailsAppBar),
];
