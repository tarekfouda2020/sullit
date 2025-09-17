part of 'order_details_imports.dart';

class OrderDetailsPage extends StatefulWidget {
  final bool isReturnedOrder;
  final Orders order;

  const OrderDetailsPage({super.key, required this.isReturnedOrder, required this.order});

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
      appBar: DefaultAppBar(title: tr("orderDetails")),
      body: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
        bloc: controller.orderDetailsBloc,
        builder: (context, state) {
          return CustomRefreshIndicatorWidget(
            onRefresh: () async => await controller.getOrderDetails(widget.order.id),
            child: GenericListView(
              padding: Dimens.paddingHorizontal20PX,
              children: [
                OrderInfoWidget(
                  isReturned: widget.isReturnedOrder,
                  order: state.data,
                ),
                Gaps.vGap12,
                OrderDetailsSectionsTitleWidget(title: tr("products")),
                Gaps.vGap8,
                OrderDetailsProductsWidget(
                  isReturned: widget.isReturnedOrder,
                  // hasReview: false,
                  controller: controller,
                  order: state.data!,
                ),
                Gaps.vGap12,
                OrderDetailsSectionsTitleWidget(title: tr("invoiceSummary")),
                Gaps.vGap8,
                OrderDetailsSummaryWidget(isReturned: widget.isReturnedOrder, order: state.data),
                Gaps.vGap50
              ],
            ),
          );
        },
      ),
    );
  }
}
