part of 'gift_card_details_widgets_imports.dart';

class GiftCardCouponWidget extends StatelessWidget {
  const GiftCardCouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 13, bottom: 17,end: 16),
      margin: const EdgeInsetsDirectional.only(start: 35,end: 35,top: 24),
      decoration:
          BoxDecoration(color: context.colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Gaps.empty),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Discount code",
                  style: AppTextStyle.s14_w400(color: context.colors.white),
                ),
                Gaps.vGap12,
                Text(
                  "GIFT50ON",
                  style: AppTextStyle.s24_w800(color: context.colors.gold),
                ),
                Gaps.vGap10,
                Text(
                  "Applied on online Purchases",
                  style: AppTextStyle.s14_w400(color: context.colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => getIt<Utilities>().copyToClipBoard("GIFT50ON"),
              child: SvgPicture.asset(Res.copyIcon),
            ),
          )
        ],
      ),
    );
  }
}
