part of 'restaurant_order_success_imports.dart';

class RestaurantOrderSuccess extends StatefulWidget {
  final OrderSummaryDomainModel summary;
  final Shop? restaurant;
  const RestaurantOrderSuccess({
    super.key,
    required this.summary,
    this.restaurant,
  });

  @override
  State<RestaurantOrderSuccess> createState() => _RestaurantOrderSuccessState();
}

class _RestaurantOrderSuccessState extends State<RestaurantOrderSuccess> {
  late final RestaurantOrderSuccessController controller;

  @override
  void initState() {
    super.initState();
    controller = RestaurantOrderSuccessController(
      widget.summary,
      widget.restaurant?.toShopCardDomainModel(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.onPressBack(context);
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: "Order Details",
          onBack: () => controller.onPressBack(context),
        ),
        body: Column(
          children: [
            const RestaurantOrderStepper(
              current: 4,
              steps: RestaurantOrderStepModel.flowSteps,
            ),
            Expanded(child: RestaurantOrderSuccessBody(controller: controller)),
          ],
        ),
      ),
    );
  }
}
