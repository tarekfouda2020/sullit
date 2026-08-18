part of 'order_summary_imports.dart';

class OrderSummaryPage extends StatefulWidget {
  final int orderId;

  const OrderSummaryPage({super.key, required this.orderId});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
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
      appBar: DefaultAppBar(title: tr('orderSummary'), showBack: true),
      body: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
        bloc: controller.orderDetailsBloc,
        builder: (context, state) {
          if (state is GenericFailedState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    tr("noDataFoundForOrder"),
                    style: AppTextStyle.s18_w600(color: context.colors.black),
                  ),
                )
              ],
            );
          } else if (state is GenericUpdateState && state.data != null) {
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
