import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/coupons/coupons_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/flash_sale/flash_sale_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/on_sale/on_sale_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/sale_details/sale_details_imports.dart';

const List<AutoRoute> saleRoute = [
  AdaptiveRoute(page: FlashSale),
  AdaptiveRoute(page: SaleDetails),
  AdaptiveRoute(page: Coupons),
  AdaptiveRoute(page: OnSale),
];
