part of 'cart_confirm_buying_imports.dart';


class CartConfirmBuying extends StatefulWidget {
  const CartConfirmBuying({super.key});

  @override
  State<CartConfirmBuying> createState() => _CartConfirmBuyingState();
}

class _CartConfirmBuyingState extends State<CartConfirmBuying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("cart"),bgColor: context.colors.white),
      body: ListView(
        children: [
          const BuildCartStepper(current: 4),
          Gaps.vGap13,
          const CartOrderDetailsWidget(),
          Gaps.vGap12,
           CartPaymentSectionTitleWidget(title: "Products",
            padding: Dimens.paddingHorizontal20PX,
          ),
          Gaps.vGap8,
           OrderDetailsProductsWidget(isReturned: false,hasReview: true,margin: Dimens.paddingHorizontal20PX,),
          Gaps.vGap12,
           CartPaymentSectionTitleWidget(title: "Invoice Summary",
          padding: Dimens.paddingHorizontal20PX,
          ),
          Gaps.vGap8,
          InvoiceSummaryCard(
            margin: Dimens.paddingHorizontal20PX,
              children: [
                BuildSummaryHeader(
                  title: tr('totalItems'),
                  details: "4.00${tr("currencyCode")}",
                ),
                BuildSummaryHeader(
                  title: tr('tax'),
                  details: "4.00${tr("currencyCode")}",
                ),
                BuildSummaryHeader(
                  title: tr('shippingFees'),
                  details: "4.00${tr("currencyCode")}",
                ),
                BuildSummaryHeader(
                  title: tr("voucherDiscount"),
                  details: "-2.00 ${tr("currencyCode")} ",
                  detailsColor: context.colors.primary,
                ),
                Gaps.line(context.colors.softGray, 15.h),
                BuildSummaryHeader(
                  title: tr("total"),
                  details: "17.00",
                  // isTotal: true,
                ),
              ]
          ),
          Gaps.vGap30,
        ],
      ),
    );
  }
}
