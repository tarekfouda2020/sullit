part of 'product_details_widgets_imports.dart';

class ProductGainedPointsWidget extends StatelessWidget {
  final ProductDetailsController controller;
  final Product model;
  const ProductGainedPointsWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    String lang = context.select<DeviceCubit, String>((value) => value.state.model.locale.languageCode);
    return Visibility(
      visible: model.hasSpecialLoyaltyPoints == true,
      child: Padding(
        padding: Dimens.standardPadding,
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                  color: context.colors.lightPink2,
                  borderRadius: Dimens.borderRadius12PX),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Res.loyaltyIcon,
                        width: Dimens.dp26,
                        height: Dimens.dp26,
                      ),
                      Gaps.hGap8,
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "${tr("get_tr")} ",
                              style: AppTextStyle.s18_w500(
                                  color: context.colors.black)),
                          TextSpan(
                              text: "${model.loyaltyPoints}",
                              style: AppTextStyle.s18_w700(
                                  color: context.colors.primary)),
                          TextSpan(
                              text: " ${tr("bezat_points")}",
                              style: AppTextStyle.s18_w500(
                                  color: context.colors.black)),
                        ]),
                      )
                    ],
                  ),
                  Gaps.vGap12,
                  GestureDetector(
                    onTap: () => controller.showPointsPromoSheet(context),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                      decoration: BoxDecoration(
                          color: context.colors.shadowPink,
                          borderRadius: Dimens.borderRadius8PX),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              tr("upgrade_now_to_get_more_bezat"),
                              style: AppTextStyle.s12_w500(
                                  color: context.colors.black),
                            ),
                          ),
                          Text(
                            tr("read_more"),
                            style: AppTextStyle.s12_w500(
                                color: context.colors.primary),
                          ),
                          Gaps.hGap7,
                          Transform.rotate(
                              angle: lang == LangCodeHelper.langAR || lang == LangCodeHelper.langUR ? 0 : pi,
                              child: SvgPicture.asset(Res.arrowBackIcon,
                                width: 13,
                                height: 13,
                                colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 15,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Transform.rotate(
                    angle: lang == LangCodeHelper.langAR || lang == LangCodeHelper.langUR ? pi : 0,
                    child: SvgPicture.asset(Res.pointsPromoIcon,
                    colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                    ),
                  ),
                  Text(tr("promo"),
                  style: AppTextStyle.s12_w700(color: context.colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
