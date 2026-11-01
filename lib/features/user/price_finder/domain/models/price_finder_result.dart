import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_product_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_finder_deal_domain_model.dart';

class PriceFinderResult extends BaseDomainModel {
  final int id;
  final String status;
  final PriceComparisonProductDomainModel product;
  final PriceFinderDeal? bestDeal;
  final List<PriceFinderDeal> offers;

  PriceFinderResult({
    required this.id,
    required this.status,
    required this.product,
    this.bestDeal,
    required this.offers,
  });
}
