part of 'restaurants_imports.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  final RestaurantController controller = RestaurantController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("Restaurants"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            CustomSearchFiledWidget(
              txtController: controller.searchController,
              onPressSearch: () {},
              onChange: (value) {},
              onPressClear: () {},
              hint: "Search for Restaurant...",
              height: 50,
            ),
            Gaps.vGap16,
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (_, __) => Gaps.vGap12,
                itemBuilder: (context, index) {
                  return const RestaurantItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
