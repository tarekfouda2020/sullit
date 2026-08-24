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
                  style: AppTextStyle.s28_w500(color: context.colors.black),
                  textAlign: TextAlign.center,
                ),
                Gaps.vGap12,
                ReviewStatusWidget(
                  textColor:context.colors.mainGreen ,
                  backGroundColor:context.colors.lightGreen ,
                  text:summary.sectionOrders!.first.deliveryStatus,
                  child:SvgPicture.asset(Res.layersIcon, width: 16, height: 16),

                ),
                Gaps.vGap14,
                Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: InstoreOrderInfoWidget(
                        orderSummary: summary,
                      ),
                    ),
                    GestureDetector(
                      onTap:() {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: context.colors.transparent,
                          builder: (_) {
                            return OrderQrBottomSheet(
                              orderNumber:summary.sectionOrders!.first.code,
                              status: summary.sectionOrders!.first.deliveryStatus,
                              totalPrice: summary.sectionOrders!.first.total,
                              orderId: summary.sectionOrders!.first.id,
                            );
                          },
                        );
                      } ,
                      child:SvgPicture.string(
                        getIt<BarcodeService>().generateQrCode(summary.sectionOrders!.first.id.toString(),),
                        width: 70,
                        height: 70,
                      ),

                    ),
                  ],
                ),
              ],
            )
        ),
        SvgPicture.asset(Res.orderConfirmImage),
      ],
    );
  }
}
