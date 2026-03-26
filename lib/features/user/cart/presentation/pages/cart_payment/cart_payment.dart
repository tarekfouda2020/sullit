// ignore_for_file: library_private_types_in_public_api

part of 'cart_payment_imports.dart';

class CartPayment extends StatefulWidget {
  final Shipping shipping;

  const CartPayment({Key? key, required this.shipping}) : super(key: key);

  @override
  _CartPaymentState createState() => _CartPaymentState();
}

class _CartPaymentState extends State<CartPayment> {
  late final CartPaymentController controller;

  @override
  void initState() {
    controller = CartPaymentController(widget.shipping);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: tr("cart"),
          bgColor: context.colors.white,
          onBack: () {
            final moved = getIt<CartNavigateHelper>()
                .setStep(CartNavigateHelper.deliveryStepIndex, force: true);
            if (!moved && context.router.canPop()) {
              AutoRouter.of(context).pop();
            }
          },
        ),
        body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
          bloc: controller.shippingBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Column(
                children: [
                  const BuildCartStepper(current: 4),
                  Flexible(
                    child: ListView(
                      cacheExtent: 9999,
                      padding: Dimens.paddingHorizontal15PX,
                      children: [
                        Gaps.vGap16,
                        PaymentMethodWidget(
                            controller: controller, shipping: state.data!),
                        Gaps.vGap12,
                        if (!context.isShareHolder)
                          CartDiscountWidget(controller: controller),
                        if (!context.isShareHolder) Gaps.vGap20,
                        DeliveryInstructionsWidget(controller: controller),
                        Gaps.vGap12,
                        // DriverTipsWidget(controller: controller),
                        // Gaps.vGap16,
                        // const NearestVipCartWidget(),
                        // Gaps.vGap12,
                        InvoiceSummaryWidget(
                          controller: controller,
                          shippingSummary: state.data!.summary,
                          giftCardTotal:
                              state.data!.summary.appliedGiftCard != null
                                  ? state.data!.summary.appliedGiftCard!
                                  : '',
                          applyGiftCard:
                              state.data!.summary.appliedGiftCard != null,
                        ),
                        Gaps.vGap20,
                        AllowReplacementWidget(controller: controller),
                        Gaps.vGap13,
                        BuildConditions(controller: controller),
                        Gaps.vGap20,
                        if (!context.isShareHolder)
                          BezatPointsSummaryWidget(
                            redeemedPoints:
                                (state.data!.summary.loyaltyPoints ?? 0)
                                    .toDouble(),
                            redeemedValue: double.parse(
                                (state.data!.summary.loyaltyPointsValue.cleanNumber() ??
                                    "0.0")),
                            earnedPoints: state
                                .data!.summary.expectedLoyaltyPoints
                                .toDouble(),
                          ),
                        if (!context.isShareHolder) Gaps.vGap25,
                        Center(
                          child: Text(
                            tr("thank_you_for_order"),
                            style: AppTextStyle.s18_w500(
                                color: context.colors.black),
                          ),
                        ),
                        Gaps.vGap25,
                        // BuildSummary(
                        //   controller: controller,
                        //   shipping: state.data!,
                        // ),
                        // BuildPaymentOptions(
                        //   controller: controller,
                        //   shippingModel: state.data!,
                        // ),
                        // BuildAdditionalInfo(controller: controller),
                        // BuildConditions(controller: controller),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: BuildPaymentButtons(
          controller: controller,
          onTap: () => controller.createOrder(context),
        ),
      ),
    );
  }
}
