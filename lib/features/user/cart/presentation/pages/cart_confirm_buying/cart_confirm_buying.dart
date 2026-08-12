part of 'cart_confirm_buying_imports.dart';

class CartConfirmBuying extends StatefulWidget {
  final OrderSummaryDomainModel? summary;
  final int? combinedId;
  final bool paymentFromHome;

  const CartConfirmBuying({
    super.key,
    this.summary,
    this.combinedId,
    this.paymentFromHome = false,
  });

  @override
  State<CartConfirmBuying> createState() => _CartConfirmBuyingState();
}

class _CartConfirmBuyingState extends State<CartConfirmBuying> {
  late final ConfirmBuyingController controller;

  @override
  void initState() {
    super.initState();
    controller = ConfirmBuyingController(widget.summary, widget.combinedId);
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
          title: tr("cart"),
          bgColor: context.colors.white,
          onBack: () => controller.onPressBack(context),
        ),
        body: BlocBuilder<GenericBloc<OrderSummaryDomainModel?>,
            GenericState<OrderSummaryDomainModel?>>(
          bloc: controller.orderSummaryBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Column(
                children: [
                  if (!widget.paymentFromHome)
                    const BuildCartStepper(current: 5),
                  Flexible(
                      child: CustomRefreshIndicatorWidget(
                    onRefresh: () async {
                      if (widget.summary != null) {
                        await controller.refreshData(
                            widget.summary!.summary!.combinedOrderId);
                      } else {
                        await controller.refreshData(widget.combinedId!);
                      }
                    },
                    child: ListView(
                      children: [
                        Gaps.vGap13,
                        CartOrderDetailsWidget(
                          summary: state.data!,
                        ),
                        Gaps.vGap12,
                        CartPaymentSectionTitleWidget(
                          title: tr("products"),
                          padding: Dimens.paddingHorizontal20PX,
                        ),
                        Gaps.vGap8,
                        CartConfirmBuyingProductsWidget(
                          controller: controller,
                          orderSummary: state.data!,
                        ),
                        Gaps.vGap12,
                        CartPaymentSectionTitleWidget(
                          title: tr("invoiceSummary"),
                          padding: Dimens.paddingHorizontal20PX,
                        ),
                        Gaps.vGap8,
                        ConfirmBuyingSummaryWidget(
                          orderSummary: state.data!,
                          controller: controller,
                        ),
                        Gaps.vGap30,
                      ],
                    ),
                  ))
                ],
              );
            } else {
              return const CartConfirmShimmerWidget();
            }
          },
        ),
      ),
    );
  }
}
