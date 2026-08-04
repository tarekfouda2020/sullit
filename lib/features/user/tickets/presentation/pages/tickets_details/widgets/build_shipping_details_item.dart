part of 'tickets_details_widgets_imports.dart';

class BuildShippingDetailsItem extends StatelessWidget {
  final OrderDetails? orderModel;

  const BuildShippingDetailsItem({
    super.key,
    this.orderModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Row(
        children: [
          CachedImage(
            url: "${orderModel?.product!.thumbnailImage}",
            height: 50.r,
            width: 50.r,
            borderRadius: Dimens.borderRadius5PX,
          ),
          Gaps.hGap22,
          Expanded(
            child: Column(
              children: [
                BuildTrackOrderSummaryItem(
                  title: "${tr('productName')} :",
                  subTitle: orderModel?.product!.name ?? "subTitle1",
                ),
                BuildTrackOrderSummaryItem(
                  title: "${tr('shippedBy')} :",
                  subTitle: orderModel?.shippedBy ?? "subTitle2",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
