part of 'order_details_imports.dart';

class OrderDetailsPage extends StatefulWidget {
  final bool isReturnedOrder;
  final int id;

  const OrderDetailsPage(
      {super.key, required this.isReturnedOrder, required this.id});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late final OrderDetailsPageController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderDetailsPageController(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("orderDetails")),
      body: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
        bloc: controller.orderDetailsBloc,
        builder: (context, state) {
          if (state.data == null) {
            return const OrderDetailsShimmerWidget();
          }
          return CustomRefreshIndicatorWidget(
            onRefresh: () async =>
                await controller.getOrderDetails(widget.id),
            child: ListView(
              padding: Dimens.paddingHorizontal20PX,
              controller: controller.scrollController,
              children: [
                OrderInfoWidget(
                  isReturned: widget.isReturnedOrder,
                  order: state.data,
                  controller: controller,
                ),
                Gaps.vGap12,
                OrderDetailsSectionsTitleWidget(title: tr("products")),
                Gaps.vGap12,
                OrderDetailsProductsWidget(
                  isReturned: widget.isReturnedOrder,
                  // hasReview: false,
                  controller: controller,
                  order: state.data!,
                ),
                Gaps.vGap12,
                OrderDetailsSectionsTitleWidget(title: tr("invoiceSummary")),
                Gaps.vGap12,
                OrderDetailsSummaryWidget(
                  isReturned: widget.isReturnedOrder,
                  order: state.data,
                  controller: controller,
                ),
                Gaps.vGap40,
                if ((state.data?.deliveryImage ?? '').isNotEmpty) ...[
                  ProofOfDeliveryRow(
                    imageUrl: state.data?.deliveryImage ?? "",
                    onTap: () => controller.showProofOfDelivery(
                        context, state.data!.deliveryImage!),
                  ),
                  Gaps.vGap16,
                ],
                Row(
                  spacing: 10,
                  children: [
                    Visibility(
                      visible: state.data!.showButtonPay &&
                          !state.data!.isPaymentCash,
                      child: Expanded(
                        child: DefaultButton(
                          title: tr("pay"),
                          onTap: () => controller.onPayOrder(context),
                          margin: EdgeInsets.zero,
                          height: Dimens.dp40,
                          color: context.colors.green,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: state.data!.availableCancelOrder,
                      child: Expanded(
                        child: DefaultButton(
                          title: tr('cancel'),
                          onTap: () =>
                              controller.cancelOrder(context),
                          margin: EdgeInsets.zero,
                          color: context.colors.gray8,
                          height: Dimens.dp40,
                        ),
                      ),
                    ),
                  ],
                ),
                if (state.data!.isDelivered || state.data!.isCanceled)
                  ReOrderButtonWidget(
                    onPress: () => controller.reOrder(context, state.data!.id),
                    bgColor: context.colors.primary,
                    txtColor: context.colors.white,
                    height: Dimens.dp50,
                  ),
                Gaps.vGap20,
                // ReOrderButtonWidget(
                //   onPress: () => controller.changeNoonStatus(),
                //   bgColor: context.colors.primary,
                //   txtColor: context.colors.white,
                //   height: Dimens.dp50,
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
