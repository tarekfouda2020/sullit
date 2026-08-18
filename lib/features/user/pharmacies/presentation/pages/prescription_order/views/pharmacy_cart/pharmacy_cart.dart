part of 'pharmacy_cart_imports.dart';

class PharmacyCart extends StatefulWidget {
  final int? pharmacyId;
  final bool fromPharmacyDetails;
  final int? preSelectedBranchId;

  const PharmacyCart({
    super.key,
    this.pharmacyId,
    this.fromPharmacyDetails = true,
    this.preSelectedBranchId,
  });

  @override
  State<PharmacyCart> createState() => _PharmacyCartState();
}

class _PharmacyCartState extends State<PharmacyCart> {
  late final PharmacyCartController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyCartController(
      pharmacyId: widget.pharmacyId,
      fromPharmacyDetails: widget.fromPharmacyDetails,
      preSelectedBranchId: widget.preSelectedBranchId,
    );
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => controller.onBack(context),
      child: Scaffold(
        appBar: DefaultAppBar(
          title: tr('cart'),
          bgColor: context.colors.white,
          onBack: () => controller.onBack(context),
          size: 55,
        ),
        body: Column(
          children: [
            const BuildPrescriptionOrderStepper(
              current: 1,
              steps: PrescriptionOrderStepModel.normalFlowSteps,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: context.colors.customBackground),
                child: Column(
                  spacing: 16,
                  children: [
                    PharmacyCartInfoWidget(controller: controller),
                    CleaAllWidget(
                      onPressClear: () => controller.showClearDialog(context),
                    ),
                    BlocBuilder<GenericBloc<CartDomainModel>,
                        GenericState<CartDomainModel>>(
                      bloc: controller.cartItemsBloc,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          return PharmacyCartItemsWidget(
                            cartItems: state.data.items ?? [],
                            controller: controller,
                          );
                        } else {
                          return const BuildPharmacyCartLoading();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: PharmacyBottomNavWidget(controller: controller),
      ),
    );
  }
}
