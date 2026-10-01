part of 'price_finder_imports.dart';

class PriceFinderWorking extends StatefulWidget {
  const PriceFinderWorking({super.key});

  @override
  State<PriceFinderWorking> createState() => _PriceFinderWorkingState();
}

class _PriceFinderWorkingState extends State<PriceFinderWorking> with SingleTickerProviderStateMixin {
  final PriceFinderController controller = PriceFinderController();

  @override
  void initState() {
    super.initState();
    controller.init(this, context);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: 'Sahla Price Finder',
        bgColor: context.colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: Column(
            children: [
              Gaps.vGap20,
              AnimatedPriceIconWidget(
                scaleAnimation: controller.scaleAnimation,
              ),
              Gaps.vGap26,
              const WorkingItemWidget(),
              Gaps.vGap20,
              const ProductItemWidget(),
              Gaps.vGap25,
              BlocBuilder<GenericBloc<int>, GenericState<int>>(
                bloc: controller.currentStep,
                builder: (
                  context,
                  state,
                ) {
                  final currentStep = state.data ?? 0;

                  return ComparisonStepWidget(
                    controller: controller,
                    currentStep: currentStep,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
