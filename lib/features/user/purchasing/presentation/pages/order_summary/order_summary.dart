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
      appBar:  DefaultAppBar(title: tr('orderSummary'), showBack: true),
      body: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
        bloc: controller.orderDetailsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState && state.data != null) {
            return ListView(
              padding: Dimens.paddingAll15PX,
              children: [
                BuildOrderInfo(orderModel: state.data!),
                BuildOrderProducts(
                  orderModel: state.data!,
                  controller: controller,
                ),
                BuildOrderAmount(
                  orderModel: state.data!,
                  controller: controller,
                ),
                BuildOrderButtons(
                  orderModel: state.data!,
                  controller: controller,
                ),
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
