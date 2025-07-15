part of 'order_details_imports.dart';

class OrderDetailsPage extends StatefulWidget {
  final bool isReturnedOrder;
 final Orders? order;
  const OrderDetailsPage({super.key, required this.isReturnedOrder, this.order});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late final OrderDetailsPageController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderDetailsPageController(widget.order);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Details"),
      body: GenericListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
          OrderInfoWidget(
            isReturned: widget.isReturnedOrder,
            order: widget.order,
          ),
          Gaps.vGap12,
          const OrderDetailsSectionsTitleWidget(title: "Products"),
          Gaps.vGap8,
          OrderDetailsProductsWidget(
            isReturned: widget.isReturnedOrder,
            hasReview: false,
            controller: controller,
            order: widget.order,
          ),
          Gaps.vGap12,
          const OrderDetailsSectionsTitleWidget(title: "Invoice Summary"),
          Gaps.vGap8,
          OrderDetailsSummaryWidget(isReturned: widget.isReturnedOrder,order: widget.order),
          Gaps.vGap50
        ],
      ),
    );
  }
}
