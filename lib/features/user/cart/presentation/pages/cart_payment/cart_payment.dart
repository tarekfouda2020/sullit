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
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar:  BuildPaymentButtons(controller: controller,),
      body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
        bloc: controller.shippingBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return Column(
              children: [
                const BuildCartStepper(current: 4),
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
                    children: [
                      BuildSummary(
                        controller: controller,
                        shipping: state.data!,
                      ),
                      BuildPaymentOptions(
                        controller: controller,
                        paymentOptions: state.data!.paymentOption!,
                      ),
                      BuildAdditionalInfo(controller: controller),
                      BuildConditions(controller: controller),
                    ],
                  ),
                ),
              ],
            );
          }else {
            return Container();
          }
        },
      ),
    );
  }
}
