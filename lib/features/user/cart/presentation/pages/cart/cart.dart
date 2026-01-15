// ignore_for_file: library_private_types_in_public_api

part of 'cart_imports.dart';

class Cart extends StatefulWidget {
  final int? initialIndex;
  const Cart({Key? key, this.initialIndex}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  late CartController controller;

  final Set<int> _visitedSteps = {CartNavigateHelper.cartStepIndex};

  @override
  void initState() {
    super.initState();
    controller = CartController();

    controller.navigateHelper.setStep(widget.initialIndex ?? CartNavigateHelper.cartStepIndex, force: true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return controller.onPressBack();
      },
      child: ValueListenableBuilder<int>(
        valueListenable: controller.navigateHelper.stepNotifier,
        builder: (context, step, _) {
          controller.onStepChanged(step);
          _visitedSteps.add(step);
          return IndexedStack(
            index: step,
            children: [
              CartItemsListWidget(controller: controller),
              _visitedSteps.contains(CartNavigateHelper.shippingStepIndex)
                  ? const ReceivingMethod()
                  : Gaps.empty,
              // _visitedSteps.contains(CartNavigateHelper.deliveryStepIndex)
              //     ? const delivery_page.Delivery()
              //     : Gaps.empty,
              _visitedSteps.contains(CartNavigateHelper.paymentStepIndex)
                  ? _buildPaymentStep()
                  : Gaps.empty,
              _visitedSteps.contains(CartNavigateHelper.confirmationStepIndex)
                  ? _buildConfirmationStep()
                  : Gaps.empty,
            ],
          );
        },
      ),
    );
  }

  Widget _buildPaymentStep() {
    final shipping = controller.paymentShipping;
    if (shipping == null) return const SizedBox.shrink();
    return CartPayment(
      key: controller.paymentViewKey,
      shipping: shipping,
    );
  }

  Widget _buildConfirmationStep() {
    return CartConfirmBuying(
      key: controller.confirmationViewKey,
      summary: controller.confirmationSummary,
      combinedId: controller.confirmationCombinedId,
    );
  }
}
