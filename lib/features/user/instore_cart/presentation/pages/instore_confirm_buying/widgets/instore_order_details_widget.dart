part of 'instore_confirm_buying_widgets_imports.dart';


class InstoreOrderDetailsWidget extends StatelessWidget {
  final OrderSummaryDomainModel summary;
  const InstoreOrderDetailsWidget({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
            width: MediaQuery.sizeOf(context).width-40,
            padding: const EdgeInsets.only(top: 46,bottom: 20,right:21 ,left: 21).r,
            margin: const EdgeInsets.only(top: 43),
            decoration: CustomDecoration(
              thisColor: context.colors.white,
            ),
            child: Column(
              children: [
                Text(tr("thankYouForYourOrder"),
                style: AppTextStyle.s18_w700(color: context.colors.black),
                ),
                Gaps.vGap4,
                Text("Your order is being prepared for delivery.",
                  style: AppTextStyle.s14_w400(color: context.colors.textColor),
                ),
                Gaps.vGap12,
                Text("Order Number",
                  style: AppTextStyle.s14_w400(color: context.colors.grey),
                ),
                Gaps.vGap6,

                Text(
                  // "${summary.summary!.combinedOrderId}",
                 "#${ summary.sectionOrders!.first.code}",
                  style: AppTextStyle.s28_w400(color: context.colors.black),
                  textAlign: TextAlign.center,
                ),
                Gaps.vGap12,
                Gaps.vGap14,
                InstoreOrderInfoWidget(orderSummary: summary,),
              ],
            )
        ),
        SvgPicture.asset(Res.orderConfirmImage),
      ],
    );
  }
}
