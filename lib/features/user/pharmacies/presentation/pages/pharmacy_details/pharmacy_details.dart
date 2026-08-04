part of 'pharmacy_details_imports.dart';

class PharmacyDetails extends StatefulWidget {
  final bool fromCart;
  final int pharmacyId;
  final int? selectedCategoryId;
  final String? selectedCategoryName;

  const PharmacyDetails(
      {super.key,
      this.fromCart = false,
      required this.pharmacyId,
      this.selectedCategoryName,
      this.selectedCategoryId});

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
  late final PharmacyDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyDetailsController(
      pharmacyId: widget.pharmacyId,
      fromCart: widget.fromCart,
      selectedCategoryId: widget.selectedCategoryId,
      selectedCategoryName: widget.selectedCategoryName,
    );
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
            PharmacyDetailsAppBar(
              controller: controller,
            ),
            PharmacyProducts(
              controller: controller,
            ),
            PharmacyNewProductsLoadingWidget(
              controller: controller,
            )
          ],
        ),
        bottomNavigationBar: PharmacyDetailsBottomNavWidget(controller: controller),
      ),
    );
  }
}
