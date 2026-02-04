part of 'product_details_widgets_imports.dart';


class PointsPromoSheetWidget extends StatelessWidget {
  final ProductDetailsController controller;
  const PointsPromoSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingH20V25,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           BottomSheetHeaderWidget(title: tr("bezat_promo")),
          Gaps.vGap22,
          Container(
            padding: const EdgeInsetsDirectional.only(start: 21,bottom: 6,top: 14),
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius12PX,
              color: context.colors.white,
              border: Border.all(color: context.colors.borderColor)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Res.loyaltyIcon,width: 24,height: 24,),
                    Gaps.hGap9,
                    Text(tr("upgrade_now_to_get_more_bezat"),
                    style: AppTextStyle.s16_w700(color: context.colors.primary),
                    )
                  ],
                ),
                Gaps.vGap16,
                ...List.generate(2, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 3, height: 3,
                          margin: const EdgeInsetsDirectional.only(end: 7),
                          decoration: BoxDecoration(
                            color: context.colors.black,
                            shape: BoxShape.circle
                          ),
                        ),
                        Text.rich(
                            TextSpan(
                          children: [
                            TextSpan(text: "Platinum Plan",
                            style: AppTextStyle.s14_w400(color: context.colors.black)
                            ),
                            TextSpan(text: " : 200 ",style: AppTextStyle.s14_w700(color: context.colors.black)),
                            TextSpan(text: tr("bezat_points"),
                                style: AppTextStyle.s14_w400(color: context.colors.black)
                            ),
                          ]
                        )),
                      ],
                    ),
                  );
                },),
              ],
            ),
          ),
          Gaps.vGap16,
          DefaultButton(title: tr("upgrade_now"),
          margin: const EdgeInsets.only(bottom: 10),
          onTap: ()=> controller.routeToSubscriptions(context),
            color: context.colors.mainGreen,
          )
        ],
      ),
    );
  }
}
