part of 'price_comparison_imports.dart';

class PriceComparisonPage extends StatefulWidget {
  final int id;

  const PriceComparisonPage({
    super.key,
    required this.id,
  });

  @override
  State<PriceComparisonPage> createState() => _PriceComparisonPageState();
}

class _PriceComparisonPageState extends State<PriceComparisonPage> {
  late final PriceComparisonController controller;

  @override
  void initState() {
    super.initState();

    controller = PriceComparisonController();

    controller.getPriceResults(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("sahlaPriceFinder"),
        bgColor: context.colors.white,
      ),
      body: BlocBuilder<GenericBloc<PriceFinderResult?>, GenericState<PriceFinderResult?>>(
        bloc: controller.priceResultBloc,
        builder: (context, state) {
          final result = state.data;
          if (result == null) {
            return const PriceComparisonShimmerWidget();
          }
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            children: [
              ComparisonHeaderWidget(
                title: tr('Price Comparison'),
                subTitle: 'Comparing across ${result.offers.length} stores in ',
                controller: controller,
              ),
              Gaps.vGap20,
              ProductItemWidget(
                product: result.product,
              ),
              Gaps.vGap16,
              if (result.bestDeal != null)
                BestDealCardWidget(
                  deal: result.bestDeal!,
                  controller: controller,
                ),
              Gaps.vGap16,
               ComparisonHeaderWidget(
                title: 'Prices near you',
                subTitle: 'Stores available in ',
                controller: controller,
              ),
              Gaps.vGap16,
              ...result.offers.map(
                (offer) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: SuggestionsProductItemWidget(deal: offer, controller: controller),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
