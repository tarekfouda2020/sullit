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
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Details"),
      body: Column(
        spacing: 30,
        children: [
          Expanded(
            child: OrderSuccessBody(controller: controller),
          ),
          CustomBottomSafeAreaWidget(
              child: Column(
            spacing: 12,
            children: [
              DefaultButton(
                title: "Cancel Order",
                onTap: () {},
                textColor: context.colors.gray8,
                color: context.colors.white,
                borderColor: context.colors.gray8,
              ),
              DefaultButton(
                title: "Confirm&Pay Now",
                onTap: () {},
                textColor: context.colors.white,
                color: context.colors.green,
                borderColor: context.colors.green,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
