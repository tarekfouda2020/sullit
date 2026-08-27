part of 'order_details_widgets_imports.dart';

class OrderDetailsWidget extends StatelessWidget {
  final Orders? order;
  final OrderDetailsPageController controller;
  const OrderDetailsWidget({super.key, this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (order?.getOrderDate != null)
          OrderINfoItemWidget(
            title: tr('date'),
            describe: DateTimeHelper.formatDate(
                date: order?.getOrderDate ?? DateTime.now(),
                formatType: "d MMM yyyy - hh:mm a"),
            gaps: Gaps.hGap4,
          ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('status'),
          describe: order?.orderStatus ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('totalItems'),
          describe: order?.totalItemsCount().toString() ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('receiptStatus'),
          describe: order?.deliveryStatus ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,

        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  if(order?.isInStore == false)...[
                    OrderINfoItemWidget(
                      title: tr('address'),
                      describe: order?.shippingAddress ?? "",
                      gaps: Gaps.hGap4,
                      textHeight: 1.2,
                    ),
                    Gaps.vGap12,
                  ],
                  OrderINfoItemWidget(
                    title: tr('phone'),
                    describe: getIt<Utilities>().handleFullPhone(context, order?.customerPhone ?? ""),
                    gaps: Gaps.hGap4,
                  ),
                  Gaps.vGap12,
                  OrderINfoItemWidget(
                    title: tr('paymentMethod'),
                    describe: order?.paymentMethod ?? "",
                    gaps: Gaps.hGap4,
                  ),
                ],
              ),
            ),
            if(order?.isInStore == true)
            GestureDetector(
              onTap:() => controller.showQrSheet(context),
              child:SvgPicture.string(
                getIt<BarcodeService>().generateQrCode(order?.id.toString() ?? ""),
                width: 70,
                height: 70,
              ),

            ),
          ],
        ),
        Gaps.vGap10,
        if (controller.showChangePayOption())
          InkWell(
            onTap: () => controller.changePaymentMethod(context),
            child: Text(
              tr("pay_now"),
              style: AppTextStyle.s12_w500(color: context.colors.green)
                  .copyWith(decoration: TextDecoration.underline, height: 1.4),
            ),
          )
      ],
    );
  }
}
