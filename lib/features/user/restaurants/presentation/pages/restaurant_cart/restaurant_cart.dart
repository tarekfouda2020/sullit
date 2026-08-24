part of 'restaurant_cart_imports.dart';

class RestaurantCart extends StatefulWidget {
  final int? restaurantId;
  final bool fromRestaurantDetails;
  final int? preSelectedBranchId;

  const RestaurantCart({
    super.key,
    this.restaurantId,
    this.fromRestaurantDetails = true,
    this.preSelectedBranchId,
  });

  @override
  State<RestaurantCart> createState() => _RestaurantCartState();
}

class _RestaurantCartState extends State<RestaurantCart> {
  late final RestaurantCartController controller;

  @override
  void initState() {
    super.initState();
    controller = RestaurantCartController(
      restaurantId: widget.restaurantId,
      fromRestaurantDetails: widget.fromRestaurantDetails,
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
            const RestaurantOrderStepper(
              current: 1,
              steps: RestaurantOrderStepModel.flowSteps,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: context.colors.customBackground),
                child: Column(
                  spacing: 16,
                  children: [
                    RestaurantCartInfoWidget(controller: controller),
                    CleaAllWidget(
                      onPressClear: () => controller.showClearDialog(context),
                    ),
                    BlocBuilder<GenericBloc<CartDomainModel>,
                        GenericState<CartDomainModel>>(
                      bloc: controller.cartItemsBloc,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          return RestaurantCartItemsWidget(
                            cartItems: state.data.items ?? [],
                            controller: controller,
                          );
                        } else {
                          return const BuildRestaurantCartLoading();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: RestaurantBottomNavWidget(controller: controller),
      ),
    );
  }
}
