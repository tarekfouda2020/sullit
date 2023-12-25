// ignore_for_file: library_private_types_in_public_api

part of 'cart_payment_imports.dart';

class CartPayment extends StatefulWidget {
  final Shipping shipping;

  const CartPayment({Key? key, required this.shipping}) : super(key: key);

  @override
  _CartPaymentState createState() => _CartPaymentState();
}

class _CartPaymentState extends State<CartPayment> {
  late CartPaymentController controller;

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
        appBar: const BuildCustomAppBar(),
        bottomNavigationBar: BuildPaymentButtons(controller: controller),
        body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
          bloc: controller.shippingBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Column(
                children: [
                  const BuildCartStepper(current: 4),
                  Flexible(
                    child: ListView(
                      padding: Dimens.paddingHorizontal15PX,
                      children: [
                        BuildSummary(
                          controller: controller,
                          shipping: state.data!,
                        ),
                        BuildPaymentOptions(
                          controller: controller,
                          shippingModel: state.data!,
                        ),
                        BuildAdditionalInfo(controller: controller),
                        BuildConditions(controller: controller),
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
      ),
    );
  }
}
