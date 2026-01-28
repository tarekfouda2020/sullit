part of 'home_main_widgets_imports.dart';

class VipOffersWidget extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;
  final EdgeInsetsGeometry? margin;
  final String? title;
  final Widget? customTitle;
  final String? subTitle;

  const VipOffersWidget({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.margin,
    this.title,
    this.subTitle,
    this.customTitle,
  });

  @override
  Widget build(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsetsDirectional.only(
            start: 31, end: 11, top: 10, bottom: 8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  context.colors.primary,
              context.colors.lightRed,
            ])),
        child: Row(
          children: [
            SvgPicture.asset(Res.vipMark),
            Gaps.hGap20,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTitle ?? Text(
                    title ?? tr("saveYourMoneyWith"),
                    style: AppTextStyle.s12_w400(color: context.colors.white),
                  ),
                  Gaps.vGap5,
                  Text(
                    subTitle ?? tr("vipMemberships"),
                    style: AppTextStyle.s20_w700(color: context.colors.white),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 42,
                  decoration: BoxDecoration(
                      color: context.colors.white, shape: BoxShape.circle),
                  child: Transform.rotate(
                    angle: lang == 'ar' ? pi : 0,
                    child: Transform.scale(
                        scale: 0.4, child: SvgPicture.asset(Res.arrowForward)),
                  ),
                ),
                Text(
                  buttonText,
                  style: AppTextStyle.s12_w600(color: context.colors.white),
                ),
                Gaps.vGap10,
              ],
            )
          ],
        ),
      ),
    );
  }
}
