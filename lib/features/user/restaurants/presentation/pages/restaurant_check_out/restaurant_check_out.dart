part of 'restaurant_check_out_imports.dart';

// ignore_for_file: library_private_types_in_public_api

class RestaurantCheckOut extends StatefulWidget {
  final Shipping? shipping;
  final PharmacyCheckoutParams? checkoutParams;
  final int? confirmOrderId;
  final bool fromOrderDetails;
  const RestaurantCheckOut({
    Key? key,
    required this.shipping,
    this.checkoutParams,
    this.confirmOrderId,
    this.fromOrderDetails = false,
  }) : super(key: key);

  @override
  _RestaurantCheckOutState createState() => _RestaurantCheckOutState();
}

class _RestaurantCheckOutState extends State<RestaurantCheckOut> {
  late final RestaurantCheckOutController controller;

  @override
  void initState() {
    controller = RestaurantCheckOutController(
      widget.shipping,
      widget.checkoutParams,
      widget.confirmOrderId,
      fromOrderDetails: widget.fromOrderDetails
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: widget.confirmOrderId!= null
              ? "confirm order"
              : "Checkout",
          bgColor: context.colors.white,
          onBack: () {
            if (context.router.canPop()) {
              AutoRouter.of(context).pop();
            }
          },
        ),
        body: Column(
          children: [
            if (!widget.fromOrderDetails && widget.confirmOrderId == null)
              const RestaurantOrderStepper(
                current: 3,
                steps: RestaurantOrderStepModel.flowSteps,
              ),
            Expanded(
              child: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
                bloc: controller.shippingBloc,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return ListView(
                      cacheExtent: 9999,
                      padding: Dimens.paddingHorizontal15PX,
                      children: [
                        Gaps.vGap16,
                        RestaurantPaymentMethodWidget(
                            controller: controller, shipping: state.data!),
                        Gaps.vGap12,
                        if (!context.isShareHolder)
                          RestaurantCartDiscountWidget(controller: controller),
                        if (!context.isShareHolder) Gaps.vGap20,
                        RestaurantDeliveryInstructionsWidget(controller: controller),
                        Gaps.vGap12,
                        // RestaurantDriverTipsWidget(controller: controller),
                        // Gaps.vGap16,
                        RestaurantPickerNotesWidget(controller: controller),
                        Gaps.vGap16,
                        // const RestaurantNearestVipCartWidget(),
                        // Gaps.vGap12,
                        RestaurantInvoiceSummaryWidget(
                          controller: controller,
                          shippingSummary: state.data!.summary,
                          giftCardTotal: state.data!.summary.appliedGiftCard != null
                              ? state.data!.summary.appliedGiftCard!
                              : '',
                          applyGiftCard: state.data!.summary.isGiftCardApplied,
                        ),
                        Gaps.vGap20,
                        RestaurantAllowReplacementWidget(controller: controller),
                        Gaps.vGap13,
                        RestaurantBuildConditions(controller: controller),
                        Gaps.vGap20,
                        if (!context.isShareHolder)
                          BezatPointsSummaryWidget(
                            redeemedPoints:
                                (state.data!.summary.loyaltyPoints ?? 0).toDouble(),
                            redeemedValue: double.parse((state
                                .data!.summary.loyaltyPointsValue
                                .cleanNumber)),
                            earnedPoints:
                                state.data!.summary.expectedLoyaltyPoints.toDouble(),
                          ),
                        if (!context.isShareHolder) Gaps.vGap25,
                        Center(
                          child: Text(
                            tr("thank_you_for_order"),
                            style: AppTextStyle.s18_w500(color: context.colors.black),
                          ),
                        ),
                        Gaps.vGap25,
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: RestaurantBuildPaymentButtons(
          controller: controller,
          onTap: () => controller.createOrder(context),
        ),
      ),
    );
  }
}
