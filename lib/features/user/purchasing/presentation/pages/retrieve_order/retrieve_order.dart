part of 'retrieve_order_imports.dart';

class RetrieveOrder extends StatefulWidget {
  final Orders orderModel;

  const RetrieveOrder({super.key, required this.orderModel});

  @override
  _RetrieveOrderState createState() => _RetrieveOrderState();
}

class _RetrieveOrderState extends State<RetrieveOrder> {
  late RetrieveOrderController controller;

  @override
  void initState() {
    controller = RetrieveOrderController(widget.orderModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('returnOrder')),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              padding: Dimens.paddingAll15PX,
              children: [
                BuildRetrieveOrderProducts(controller: controller),
                BuildRetrieveAddress(controller: controller),
                BuildRetrieveReason(controller: controller),
              ],
            ),
          ),
          DefaultButton(
            margin: Dimens.paddingAll20PX,
            title: tr('returnOrder'),
            onTap: () => controller.returnOrder(context),
          ),
        ],
      ),
    );
  }
}
