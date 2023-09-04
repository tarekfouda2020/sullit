part of 'order_summary_imports.dart';

class OrderSummary extends StatefulWidget {
  final int orderId;

  const OrderSummary({super.key, required this.orderId});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  late OrderSummaryController controller;

  @override
  void initState() {
    controller = OrderSummaryController(widget.orderId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Summary", showBack: true),
      body: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
        bloc: controller.orderDetailsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: Dimens.paddingAll15PX,
              children: [
                BuildOrderInfo(orderModel: state.data!),
                BuildOrderProducts(
                  orderModel: state.data!,
                  controller: controller,
                ),
                BuildOrderAmount(orderModel: state.data!),
                Visibility(
                  visible: state.data!.showButtonPay,
                  child: DefaultButton(
                    title: "Complete Payment",
                    onTap: () {},
                  ),
                )
              ],
            );
          } else {
            return const BuildLoadingSummary();
          }
        },
      ),
    );
  }
}
