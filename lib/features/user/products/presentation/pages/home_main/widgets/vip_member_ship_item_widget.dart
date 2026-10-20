part of 'home_main_widgets_imports.dart';

class VipMemberShipItemWidget extends StatelessWidget {
  const VipMemberShipItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(20, 1, 20, 45),
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: context.colors.black,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.black,
              border: Border.all(
                color: context.colors.darkGold,
                width: 2.5,
              ),
            ),
            child: Center(
              child: Text(
                'VIP',
                style: AppTextStyle.s20_w700(color: context.colors.darkGold).copyWith(fontSize: 17),
              ),
            ),
          ),
          Gaps.hGap8,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VIP Membership',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s16_w600(color: context.colors.white),
                ),
                Gaps.vGap8,
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'More Savings.',
                        style: AppTextStyle.s10_w400(color: context.colors.darkGold),
                      ),
                      TextSpan(
                        text: 'More Benefits.More for You.',
                        style: AppTextStyle.s10_w400(color: context.colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gaps.hGap6,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: context.colors.darkGold,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Explore VIP ',
                  style: AppTextStyle.s10_w400(color: context.colors.black).copyWith(fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 11,
                  color: context.colors.black,
                ),
              ],
            ),
          ),
          Gaps.hGap15,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Res.crownIcon,
                height: 20,
                width: 20,
                color: context.colors.darkGold,
              ),
              Gaps.vGap5,
              Text(
                'AED 20 / 40',
                maxLines: 1,
                style: AppTextStyle.s11_w700(color: context.colors.white),
              ),
              Gaps.vGap5,
              Text(
                'Monthly Credit',
                maxLines: 1,
                style: AppTextStyle.s9_w500(color: context.colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
