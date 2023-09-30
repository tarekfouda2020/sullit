part of 'coupons_widgets_imports.dart';

class BuildCouponItem extends StatelessWidget {
  final Coupon couponModel;

  const BuildCouponItem({super.key, required this.couponModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: CachedImage(url: couponModel.icon)),
          Padding(
            padding: Dimens.paddingAll15PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    couponModel.code,
                    style: AppTextStyle.s15_w700(color: context.colors.primary),
                  ),
                ),
                Text(
                  "${couponModel.couponUsagesCount} ${tr('sold')}",
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
