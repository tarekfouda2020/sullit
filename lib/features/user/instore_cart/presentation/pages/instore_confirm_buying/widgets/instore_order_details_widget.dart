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
                Gaps.vGap22,
                Divider(color:context.colors.softGray , thickness: 0.8,height: 0,),
                Gaps.vGap12,
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${tr("orderNo")} : ",
                        style: AppTextStyle.s18_w300(color: context.colors.black),
                      ),
                      Text(
                        // "${summary.summary!.combinedOrderId}",
                        summary.sectionOrders!.first.code,
                        style: AppTextStyle.s18_w600(color: context.colors.primary),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Gaps.vGap12,
                Divider(color:context.colors.softGray , thickness: 0.8,height: 0),
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
