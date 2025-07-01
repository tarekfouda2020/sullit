part of 'order_details_imports.dart';

class OrderDetailsPage extends StatefulWidget {
  final bool isReturnedOrder;
  const OrderDetailsPage({super.key, required this.isReturnedOrder});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {

  final OrderDetailsPageController controller = OrderDetailsPageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Details"),
      body: GenericListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
           OrderInfoWidget(isReturned: widget.isReturnedOrder,),
          Gaps.vGap12,
          const OrderDetailsSectionsTitleWidget(title: "Products"),
          Gaps.vGap8,
           OrderDetailsProductsWidget(isReturned: widget.isReturnedOrder,hasReview: false,),
          Gaps.vGap12,
          const OrderDetailsSectionsTitleWidget(title: "Invoice Summary"),
          Gaps.vGap8,
           OrderDetailsSummaryWidget(isReturned: widget.isReturnedOrder),
          Gaps.vGap50
        ],
      ),
    );
  }
}
