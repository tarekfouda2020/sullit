part of 'price_finder_working_imports.dart';

class PriceFinderWorking extends StatefulWidget {
  final PriceComparisonDomainModel? initData;
  final int priceComparisonsId;

  const PriceFinderWorking({super.key, this.initData, required this.priceComparisonsId});

  @override
  State<PriceFinderWorking> createState() => _PriceFinderWorkingState();
}

class _PriceFinderWorkingState extends State<PriceFinderWorking> with SingleTickerProviderStateMixin {
  late final PriceFinderWorkingController controller;

  @override
  void initState() {
    super.initState();
    controller = PriceFinderWorkingController(widget.initData?.id ?? widget.priceComparisonsId, widget.initData);
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
      body: BlocBuilder<GenericBloc<PriceComparisonDomainModel?>, GenericState<PriceComparisonDomainModel?>>(
        bloc: controller.priceComparisonCubit,
        builder: (context, state) {
          final comparison = state.data;

          return Padding(
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
                if (comparison != null)
                  ProductItemWidget(
                    product: comparison.product,
                  ),
                Gaps.vGap25,
                if (comparison != null)
                  ComparisonStepWidget(
                    comparison: comparison,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
