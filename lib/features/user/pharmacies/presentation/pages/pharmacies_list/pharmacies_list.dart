part of 'pharmacies_list_imports.dart';

class PharmaciesList extends StatefulWidget {
  final bool makePrescriptionOrder;
  final File? initialPrescriptionFile;
  final SavedPrescriptionModel? initialSavedPrescription;

  const PharmaciesList({
    super.key,
    this.makePrescriptionOrder = false,
    this.initialPrescriptionFile,
    this.initialSavedPrescription,
  });

  @override
  State<PharmaciesList> createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {
  late final PharmaciesListController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmaciesListController(
      makePrescriptionOrder: widget.makePrescriptionOrder,
      initialPrescriptionFile: widget.initialPrescriptionFile,
      initialSavedPrescription: widget.initialSavedPrescription,
    );
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
        title: widget.makePrescriptionOrder ? "Prescription Order" : "Pharmacies",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap10,
            CustomSearchFiledWidget(
              txtController: controller.searchController,
              onPressSearch: () => controller.getPharmacies(1),
              onChange: (value) => controller.whileWriting(value),
              onPressClear: () => controller.clearSearchField(),
              hint: "Search for Pharmacies...",
              height: 50,
            ),
            if (widget.makePrescriptionOrder) ...[
              Gaps.vGap16,
              Text(
                "Select a pharmacy and start ordering ",
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ],
            Gaps.vGap16,
            Expanded(
              child: CustomRefreshIndicatorWidget(
                onRefresh: () => controller.getPharmacies(1),
                child: PagedListView<int, ShopCardDomainModel>(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<ShopCardDomainModel>(
                    itemBuilder: (_, item, index) {
                      return PharmacyCardWidget(
                        shop: item,
                        onTap: () => controller.onPressPharmacy(context, item),
                        showSelectionRadio: widget.makePrescriptionOrder,
                      );
                    },
                    firstPageProgressIndicatorBuilder: (_) =>
                        const PharmacyListShimmer(),
                    noItemsFoundIndicatorBuilder: (_) =>
                        const BuildEmptyDataView(),
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
