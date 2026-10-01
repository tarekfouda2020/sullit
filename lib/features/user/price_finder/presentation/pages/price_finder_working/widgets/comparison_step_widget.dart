part of 'imports.dart';

class ComparisonStepWidget extends StatelessWidget {
  final PriceFinderController controller;
  final int currentStep;

  const ComparisonStepWidget({super.key, required this.controller, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComparisonItemStepWidget(
          title: controller.steps[0],
          isActive: currentStep == 0,
          isCompleted: currentStep > 0,
        ),
        Gaps.vGap10,
        ComparisonItemStepWidget(
          title: controller.steps[1],
          isActive: currentStep == 1,
          isCompleted: currentStep > 1,
        ),
        Gaps.vGap10,
        ComparisonItemStepWidget(
          title: controller.steps[2],
          isActive: currentStep == 2,
          isCompleted: currentStep > 2,
        ),
      ],
    );
  }
}
