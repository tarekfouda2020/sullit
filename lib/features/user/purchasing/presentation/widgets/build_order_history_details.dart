part of 'purchasing_widgets_imports.dart';
class BuildOrderHistoryDetails extends StatelessWidget {
  final Orders order;

  const BuildOrderHistoryDetails({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: order.selected,
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: Dimens.paddingAll15PX,
        decoration: CustomDecoration(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr('date'),
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  order.orderDate.split(' ').first,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
            Gaps.line(context.colors.greyWhite, 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr('deliveryStatus'),
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  order.orderStatus,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
            Gaps.line(context.colors.greyWhite, 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr('paymentStatus'),
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Container(
                  padding: Dimens.paddingAll5PX,
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius5PX,
                  ),
                  child: Text(
                    order.paymentStatusText,
                    style: AppTextStyle.s12_w400(
                      color: context.colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
