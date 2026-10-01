part of 'price_comparison_imports.dart';

class PriceComparisonPage extends StatefulWidget {
  const PriceComparisonPage({super.key});

  @override
  State<PriceComparisonPage> createState() => _PriceComparisonPageState();
}

class _PriceComparisonPageState extends State<PriceComparisonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: "Sahla Price Finder",
        bgColor: context.colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              children: [
                const ComparisonHeaderWidget(
                  title: 'Price Comparison',
                  subTitle: 'Comparing across 6 stores in ',
                  subTitleName: 'Al Mushrif, Abu Dhabi',
                ),
                Gaps.vGap20,
                const ProductItemWidget(),
                Gaps.vGap16,
                const BestDealCardWidget(),
                Gaps.vGap16,
                const ComparisonHeaderWidget(
                  title: 'Prices near you',
                  subTitle: 'Stores available in ',
                  subTitleName: 'Al Mushrif, Abu Dhabi',
                ),
                Gaps.vGap16,
                SuggestionsProductItemWidget(
                  bgColor: context.colors.lightGreen3,
                  isLowest: true,
                  shopColor: context.colors.darkGreen2,
                  shopIconColor: context.colors.white,
                ),
                ...List.generate(
                  2,
                  (index) {
                    return SuggestionsProductItemWidget(
                      bgColor: context.colors.white,
                      isLowest: false,
                      shopColor: context.colors.customBackground,
                      shopIconColor: context.colors.black,
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
