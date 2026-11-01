import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_product_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_step_domain_model.dart';

class PriceComparisonDomainModel extends BaseDomainModel {
  final int id;
  String status;
  final PriceComparisonProductDomainModel product;
  List<PriceComparisonStepDomainModel> steps;
  int storesCount;
  String? bestPrice;
  String? bestSavings;
  final String currencySymbol;
  final String channel;
  final String event;
  String? errorMessage;

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

  bool get isCompleted => status == "completed";

  bool isStepActive(int index) {
    if (index < 0 || index >= steps.length) return false;
    final step = steps[index];
    if (step.isCompleted) return false;
    if (index <= 0) return true;
    return steps.take(index).every((item) => item.isCompleted);
  }

  void applyPusherPayload(Map<String, dynamic> json) {
    final nextStatus = json['status'];
    if (nextStatus is String) status = nextStatus;

    final nextStoresCount = json['stores_count'];
    if (nextStoresCount is int) storesCount = nextStoresCount;

    if (json.containsKey('best_price')) {
      bestPrice = json['best_price']?.toString();
    }
    if (json.containsKey('best_savings')) {
      bestSavings = json['best_savings']?.toString();
    }
    if (json.containsKey('error_message')) {
      errorMessage = json['error_message'] as String?;
    }

    final nextSteps = json['steps'];
    if (nextSteps is List) {
      steps = nextSteps
          .map(
            (step) => PriceComparisonStepDomainModel.fromJson(
              Map<String, dynamic>.from(step as Map),
            ),
          )
          .toList();
    }
  }
}
