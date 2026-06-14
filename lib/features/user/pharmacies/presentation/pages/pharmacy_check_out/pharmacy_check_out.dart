part of 'pharmacy_check_out_imports.dart';

// ignore_for_file: library_private_types_in_public_api

class PharmacyCheckOut extends StatefulWidget {
  final Shipping? shipping;
  final PharmacyCheckoutParams? checkoutParams;
  final int? confirmOrderId;
  final bool fromOrderDetails;
  const PharmacyCheckOut({
    Key? key,
    required this.shipping,
    this.checkoutParams,
    this.confirmOrderId,
    this.fromOrderDetails = false,
  }) : super(key: key);

  @override
  _PharmacyCheckOutState createState() => _PharmacyCheckOutState();
}

class _PharmacyCheckOutState extends State<PharmacyCheckOut> {
  late final PharmacyCheckOutController controller;

  @override
  void initState() {
    controller = PharmacyCheckOutController(
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
        body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
          bloc: controller.shippingBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return ListView(
                cacheExtent: 9999,
                padding: Dimens.paddingHorizontal15PX,
                children: [
                  Gaps.vGap16,
                  PharmacyPaymentMethodWidget(
                      controller: controller, shipping: state.data!),
                  Gaps.vGap12,
                  if (!context.isShareHolder &&
                      state.data?.summary.insuranceEligible == false)
                    PharmacyCartDiscountWidget(controller: controller),
                  if (!context.isShareHolder) Gaps.vGap20,
                  PharmacyDeliveryInstructionsWidget(controller: controller),
                  Gaps.vGap12,
                  // PharmacyDriverTipsWidget(controller: controller),
                  // Gaps.vGap16,
                  PharmacyPickerNotesWidget(controller: controller),
                  Gaps.vGap16,
                  // const PharmacyNearestVipCartWidget(),
                  // Gaps.vGap12,
                  PharmacyInvoiceSummaryWidget(
                    controller: controller,
                    shippingSummary: state.data!.summary,
                    giftCardTotal: state.data!.summary.appliedGiftCard != null
                        ? state.data!.summary.appliedGiftCard!
                        : '',
                    applyGiftCard: state.data!.summary.isGiftCardApplied,
                  ),
                  Gaps.vGap20,
                  // PharmacyAllowReplacementWidget(controller: controller),
                  // Gaps.vGap13,
                  PharmacyBuildConditions(controller: controller),
                  Gaps.vGap20,
                  if (!context.isShareHolder)
                    BezatPointsSummaryWidget(
                      redeemedPoints:
                          (state.data!.summary.loyaltyPoints ?? 0).toDouble(),
                      redeemedValue: double.parse((state
                          .data!.summary.loyaltyPointsValue
                          .cleanNumber())),
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
        bottomNavigationBar: PharmacyBuildPaymentButtons(
          controller: controller,
          onTap: () => controller.createOrder(context),
        ),
      ),
    );
  }
}
