import 'package:auto_route/auto_route.dart';

import '../../pages/price_comparison_page/price_comparison_imports.dart';
import '../../pages/price_finder_page/price_finder_imports.dart';
import '../../pages/price_finder_working/price_finder_imports.dart';
import '../../pages/search_price_result/search_price_result_imports.dart';
import '../../pages/search_scanner_page/search_scanner_imports.dart';

const List<AutoRoute> finderRoute = [
  AdaptiveRoute(page: PriceFinderPage),
  AdaptiveRoute(page: SearchPriceResult),
  AdaptiveRoute(page: SearchScannerPage),
  AdaptiveRoute(page: PriceFinderWorking),
  AdaptiveRoute(page: PriceComparisonPage),
];
