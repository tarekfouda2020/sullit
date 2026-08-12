part of 'instore_confirm_buying_imports.dart';

class InstoreConfirmBuying extends StatefulWidget {
  final OrderSummaryDomainModel? summary;
  final int? combinedId;

  const InstoreConfirmBuying({
    super.key,
    this.summary,
    this.combinedId,
  });

  @override
  State<InstoreConfirmBuying> createState() => _InstoreConfirmBuyingState();
}

class _InstoreConfirmBuyingState extends State<InstoreConfirmBuying> {
  late final InstoreConfirmBuyingController controller;

  @override
  void initState() {
    super.initState();
    controller = InstoreConfirmBuyingController(widget.summary, widget.combinedId);
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
        appBar: DefaultAppBar(
          title: tr('confirmation'),
          bgColor: context.colors.white,
          onBack: () => controller.onPressBack(context),
        ),
        body: BlocBuilder<GenericBloc<OrderSummaryDomainModel?>, GenericState<OrderSummaryDomainModel?>>(
          bloc: controller.orderSummaryBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return CustomRefreshIndicatorWidget(
                onRefresh: () async {
                  if (widget.summary != null) {
                    await controller.getCombinedOrder(
                      widget.summary!.summary!.combinedOrderId,
                    );
                  } else {
                    await controller.getCombinedOrder(widget.combinedId!);
                  }
                },
                child: ListView(
                  children: [
                    Gaps.vGap13,
                    InstoreOrderDetailsWidget(summary: state.data!),
                    Gaps.vGap12,
                    CartPaymentSectionTitleWidget(
                      title: tr('products'),
                      padding: Dimens.paddingHorizontal20PX,
                    ),
                    Gaps.vGap8,
                    InstoreConfirmBuyingProductsWidget(
                      controller: controller,
                      orderSummary: state.data!,
                    ),
                    Gaps.vGap12,
                    CartPaymentSectionTitleWidget(
                      title: tr('invoiceSummary'),
                      padding: Dimens.paddingHorizontal20PX,
                    ),
                    Gaps.vGap8,
                    InstoreConfirmBuyingSummaryWidget(
                      orderSummary: state.data!,
                      controller: controller,
                    ),
                    Gaps.vGap30,
                  ],
                ),
              );
            }

            return const InstoreConfirmShimmerWidget();
          },
        ),
      ),
    );
  }
}
