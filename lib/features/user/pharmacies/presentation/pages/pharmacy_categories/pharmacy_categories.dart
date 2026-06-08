part of 'pharmacy_categories_imports.dart';

class PharmacyCategories extends StatefulWidget {
  final int pharmacyId;
  const PharmacyCategories({super.key, required this.pharmacyId});

  @override
  State<PharmacyCategories> createState() => _PharmacyCategoriesState();
}

class _PharmacyCategoriesState extends State<PharmacyCategories> {
  late final PharmacyCategoriesController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyCategoriesController(shopId: widget.pharmacyId);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.white,
        body: CustomScrollView(
          slivers: [
            PharmacyCategoriesAppBar(
              controller: controller,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: PagedSliverGrid<int, ShopCategory>(
                pagingController: controller.pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.1,
                ),
                builderDelegate: PagedChildBuilderDelegate<ShopCategory>(
                  itemBuilder: (context, category, index) {
                    return PharmacyCategoryCardWidget(
                      category: category,
                      onTap: () =>
                          controller.onSelectCategory(context, category),
                    );
                  },
                  firstPageProgressIndicatorBuilder: (context) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  noItemsFoundIndicatorBuilder: (context) => Center(
                    child: BuildEmptyDataView(
                      text: tr("noCategoriesAdded"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
