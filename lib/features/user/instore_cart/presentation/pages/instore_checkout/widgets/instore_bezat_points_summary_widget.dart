part of '../instore_checkout_imports.dart';

class InstoreBezatPointsSummaryWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreBezatPointsSummaryWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final summary = controller.summary;
    if (summary == null) return const SizedBox.shrink();

    return BezatPointsSummaryWidget(
      redeemedPoints: summary.loyaltyPoints.toDouble(),
      redeemedValue: double.tryParse(
            summary.loyaltyPointsValue.replaceAll(',', ''),
          ) ??
          0,
      earnedPoints: summary.expectedLoyaltyPoints.toDouble(),
    );
  }
}
