import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/user/search/presentation/pages/all_products_search/all_products_search_imports.dart';
import 'package:flutter_tdd/features/user/search/presentation/pages/search/search_imports.dart';

const List<AutoRoute> searchRoute = [
  AdaptiveRoute(page: Search),
  AdaptiveRoute(page: AllProductsSearch),
];
