import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_product_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_step_domain_model.dart';

class PriceComparisonDomainModel extends BaseDomainModel {
  final int id;
  final String status;
  final PriceComparisonProductDomainModel product;
  final List<PriceComparisonStepDomainModel> steps;
  final int storesCount;
  final String? bestPrice;
  final String? bestSavings;
  final String currencySymbol;
  final String channel;
  final String event;
  final String? errorMessage;

  PriceComparisonDomainModel({
    required this.id,
    required this.status,
    required this.product,
    required this.steps,
    required this.storesCount,
    this.bestPrice,
    this.bestSavings,
    required this.currencySymbol,
    required this.channel,
    required this.event,
    this.errorMessage,
  });
}
