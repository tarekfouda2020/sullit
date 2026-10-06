part of 'price_finder_imports.dart';

class PriceFinderWorking extends StatefulWidget {
  final PriceComparisonDomainModel? initData;
  final int priceComparisonsId;
  const PriceFinderWorking({super.key, this.initData, required this.priceComparisonsId});

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
        title: tr("sahlaPriceFinder"),
        bgColor: context.colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
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
              builder: (context, state) {
                int currentStep = state.data ;
                return ComparisonStepWidget(
                  controller: controller,
                  currentStep: currentStep,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
