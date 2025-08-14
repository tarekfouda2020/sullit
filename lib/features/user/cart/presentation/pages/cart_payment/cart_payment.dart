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
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(title: tr("cart"), bgColor: context.colors.white),
        body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
          bloc: controller.shippingBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Column(
                children: [
                  const BuildCartStepper(current: 3),
                  Flexible(
                    child: ListView(
                      padding: Dimens.paddingHorizontal15PX,
                      children: [
                        Gaps.vGap16,
                        PaymentMethodWidget(controller: controller, shipping: state.data!),
                        Gaps.vGap12,
                        CartDiscountWidget(controller: controller),
                        Gaps.vGap20,
                        InvoiceSummaryWidget(
                          controller: controller,
                          shippingSummary: state.data!.summary,
                          giftCardTotal: state.data!.summary.appliedGiftCard != null? state.data!.summary.appliedGiftCard! : '',
                          applyGiftCard: state.data!.summary.appliedGiftCard != null,
                        ),
                        BuildConditions(controller: controller),
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
