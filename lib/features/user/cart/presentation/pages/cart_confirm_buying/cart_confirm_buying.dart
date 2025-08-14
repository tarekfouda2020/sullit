part of 'cart_confirm_buying_imports.dart';

class CartConfirmBuying extends StatefulWidget {
  final OrderSummary? summary;
  final int? combinedId;
  const CartConfirmBuying({super.key, this.summary, this.combinedId});

  @override
  State<CartConfirmBuying> createState() => _CartConfirmBuyingState();
}

class _CartConfirmBuyingState extends State<CartConfirmBuying> {
  late final ConfirmBuyingController controller;

  @override
  void initState() {
    super.initState();
    controller = ConfirmBuyingController(widget.summary,widget.combinedId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("cart"), bgColor: context.colors.white),
      body: BlocBuilder<GenericBloc<OrderSummary?>,
          GenericState<OrderSummary?>>(
        bloc: controller.orderSummaryBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              children: [
                const BuildCartStepper(current: 4),
                Gaps.vGap13,
                CartOrderDetailsWidget(summary: state.data!,),
                Gaps.vGap12,
                CartPaymentSectionTitleWidget(
                  title: "Products",
                  padding: Dimens.paddingHorizontal20PX,
                ),
                Gaps.vGap8,
                ...List.generate(state.data!.sectionOrders!.length, (index) {
                  return CartOrderProductsWidget(
                      controller: controller,
                      order: state.data!.sectionOrders![index]
                  );
                }),
                Gaps.vGap12,
                CartPaymentSectionTitleWidget(
                  title: "Invoice Summary",
                  padding: Dimens.paddingHorizontal20PX,
                ),
                Gaps.vGap8,
                InvoiceSummaryCard(margin: Dimens.paddingHorizontal20PX, children: [
                  BuildSummaryHeader(
                    title: tr('totalItems'),
                    details: "${state.data!.subTotal.toString()}${tr("currencyCode")}",
                  ),
                  BuildSummaryHeader(
                    title: tr('tax'),
                    details: "${state.data!.tax.toString()}${tr("currencyCode")}",
                  ),
                  BuildSummaryHeader(
                    title: tr('shippingFees'),
                    details: "${state.data!.shippingTotal.toString()}${tr("currencyCode")}",
                  ),
                  Visibility(
                    visible: state.data!.loyaltyPointsDiscount>0 || state.data!.discounts>0,
                    child: BuildSummaryHeader(
                      title: state.data!.loyaltyPointsDiscount >0
                          ? "Points Discount"
                          :tr("voucherDiscount"),
                      details: state.data!.loyaltyPointsDiscount>0
                          ? "${state.data!.loyaltyPointsDiscount}${tr("currencyCode")}"
                          :"${state.data!.discounts}${tr("currencyCode")}",
                      detailsColor: context.colors.primary,
                    ),
                  ),
                  Gaps.line(context.colors.softGray, 15.h),
                  BuildSummaryHeader(
                    title: tr("total"),
                    details: state.data!.total.toString(),
                    // isTotal: true,
                  ),
                ]),
                Gaps.vGap30,
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
