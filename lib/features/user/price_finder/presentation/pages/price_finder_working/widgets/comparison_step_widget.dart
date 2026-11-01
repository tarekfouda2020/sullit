part of 'imports.dart';

class ComparisonStepWidget extends StatelessWidget {
  final PriceComparisonDomainModel comparison;

  const ComparisonStepWidget({super.key, required this.comparison});

  @override
  Widget build(BuildContext context) {
    final steps = comparison.steps;
    if (steps.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        for (int index = 0; index < steps.length; index++) ...[
          if (index > 0) Gaps.vGap10,
          ComparisonItemStepWidget(
            title: steps[index].label,
            isActive: comparison.isStepActive(index),
            isCompleted: steps[index].isCompleted,
          ),
        ],
      ],
    );
  }
}
