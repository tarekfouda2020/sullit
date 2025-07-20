part of 'loyalty_points_widgets_imports.dart';

class LoyaltyPointsInfo extends StatelessWidget {
  const LoyaltyPointsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 15),
      margin: Dimens.marginBottom20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                context.colors.darkRed,
                context.colors.primary,
              ])
      ),
      child: Column(
        children: [
                          Text(tr("yourLoyaltyPointsBalance"),
          style: AppTextStyle.s16_w400(color: context.colors.white),
          ),
          Gaps.vGap12,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("13675 ",
                style: AppTextStyle.s28_w800(color: context.colors.gold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(tr("point"),
                  style: AppTextStyle.s20_w400(color: context.colors.gold),
                ),
              ),
              Gaps.hGap12,
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("=",
                  style: AppTextStyle.s28_w800(color: context.colors.gold),
                ),
              ),
              Gaps.hGap16,
              Text("23.00 ",
                style: AppTextStyle.s28_w800(color: context.colors.gold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text("AED",
                  style: AppTextStyle.s20_w400(color: context.colors.gold),
                ),
              ),
            ],
          ),
          Gaps.vGap19,
          Image.asset(
              Res.giftCardBarcodePlaceholder,
            width: 236,
          )
        ],
      ),
    );
  }
}
