part of 'home_main_widgets_imports.dart';

class VipOffersWidget extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final EdgeInsetsGeometry? margin;
  const VipOffersWidget({super.key, required this.onTap, required this.text,  this.margin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 10),
        padding:  const EdgeInsetsDirectional.only(start:31 ,end:11,top: 10,bottom: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
            context.colors.darkRed,
            context.colors.primary,
          ])
        ),
        child: Row(
          children: [
            SvgPicture.asset(Res.vipMark),
            Gaps.hGap20,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr("saveYourMoneyWith"),
                    style: AppTextStyle.s12_w400(color: context.colors.white),
                  ),
                  Gaps.vGap5,
                  Text(
                    tr("vipOffers"),
                    style: AppTextStyle.s22_w700(color: context.colors.white),
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
                  decoration: BoxDecoration(color: context.colors.white,
                  shape: BoxShape.circle
                  ),
                  child: Transform.scale(
                      scale: 0.4,
                      child: SvgPicture.asset(Res.arrowForward)),
                ),
                Text(
                  text,
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
