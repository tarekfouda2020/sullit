part of 'restaurant_address_imports.dart';

class RestaurantAddress extends StatefulWidget {
  final Shop? restaurant;
  final int? preSelectedBranchId;

  const RestaurantAddress({
    super.key,
    this.restaurant,
    this.preSelectedBranchId,
  });

  @override
  State<RestaurantAddress> createState() => _RestaurantAddressState();
}

class _RestaurantAddressState extends State<RestaurantAddress> {
  late final RestaurantAddressController controller;

  @override
  void initState() {
    super.initState();
    controller = RestaurantAddressController(
      restaurant: widget.restaurant,
      preSelectedBranchId: widget.preSelectedBranchId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: "Cart",
        bgColor: context.colors.white,
      ),
      body: Column(
        children: [
          const RestaurantOrderStepper(
            current: 2,
            steps: RestaurantOrderStepModel.flowSteps,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddressSelectionSectionWidget(
                    controller: controller,
                  ),
                  Gaps.vGap20,
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: RestaurantAddressButtonsWidget(
        controller: controller,
      ),
    );
  }
}
