part of 'order_success_imports.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({super.key});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  final OrderSuccessController controller = OrderSuccessController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Details"),
      body: Column(
        spacing: 30,
        children: [
          const Expanded(child: OrderSuccessBody()),
          CustomBottomSafeAreaWidget(
              child: Column(
                spacing: 12,
            children: [
              DefaultButton(
                title: "Cancel Order",
                onTap: (){},
                textColor: context.colors.gray8,
                color: context.colors.white,
                borderColor: context.colors.borderColor,
              ),
              DefaultButton(
                title: "Confirm&Pay Now",
                onTap: (){},
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
