part of 'order_success_imports.dart';

class OrderSuccess extends StatefulWidget {
  final OrderSummaryDomainModel summary;

  const OrderSuccess({super.key, required this.summary});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  late final OrderSuccessController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderSuccessController(widget.summary);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.onPressBack(context);
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar:  DefaultAppBar(
            title: "Order Details",
          onBack: () => controller.onPressBack(context),
        ),
        body: OrderSuccessBody(controller: controller),
      ),
    );
  }
}
