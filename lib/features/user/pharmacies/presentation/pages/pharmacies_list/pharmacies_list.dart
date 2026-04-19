part of 'pharmacies_list_imports.dart';

class PharmaciesList extends StatefulWidget {
  const PharmaciesList({super.key});

  @override
  State<PharmaciesList> createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {


  final PharmaciesListController controller = PharmaciesListController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Pharmacies"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gaps.vGap10,
            CustomSearchFiledWidget(
                txtController: controller.searchController,
                onPressSearch: () {},
                onChange: (value) {},
                onPressClear: () {},
              hint: "Search for Pharmacies...",
              height: 50 ,
            ),
            Gaps.vGap16,
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return const PharmacyCardWidget();
            },))
          ],
        ),
      ),
    );
  }
}
