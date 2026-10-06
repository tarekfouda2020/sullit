part of 'price_finder_imports.dart';

class PriceFinderPage extends StatefulWidget {
  const PriceFinderPage({super.key});

  @override
  State<PriceFinderPage> createState() => _PriceFinderPageState();
}

class _PriceFinderPageState extends State<PriceFinderPage> {
  final PriceFinderController controller = PriceFinderController();

  @override
  void initState() {
    super.initState();
    controller.getPopularSearches();
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarLocationWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 24),
              children: [
                const PriceFinderHeaderWidget(),
                Gaps.vGap16,
                const PriceFinderSearchCardWidget(),
                Gaps.vGap16,
                ScanFieldWidget(
                  controller: controller,
                ),
                Gaps.vGap24,
                PopularSearchesWidget(
                  controller: controller,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
