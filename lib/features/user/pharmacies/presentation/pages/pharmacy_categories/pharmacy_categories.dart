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
    controller = PharmacyCategoriesController(pharmacyId: widget.pharmacyId);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        body: CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            PharmacyCategoriesAppBar(
              controller: controller,
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Shop By category",
                  style: AppTextStyle.s16_w600(color: context.colors.black),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(right: 16,left: 16,bottom: 16),
              sliver: PagedSliverGrid<int, ShopCategory>(
                pagingController: controller.pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 90 / 146,
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
