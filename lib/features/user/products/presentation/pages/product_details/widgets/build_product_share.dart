part of 'product_details_widgets_imports.dart';
class BuildProductShare extends StatelessWidget {
  const BuildProductShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: Dimens.paddingHorizontal15PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.line(context.colors.greyWhite, 20.h),
            Text(
              "${tr('share')} : ",
              style: AppTextStyle.s15_w700(
                color: context.colors.black,
              ),
            ),
            Gaps.vGap15,
            Wrap(
              children: const [
                BuildShareItem(image: Res.facebook,),
                BuildShareItem(image: Res.apple,),
                BuildShareItem(image: Res.facebook,),
              ],
            ),
            Gaps.line(context.colors.greyWhite, 30.h),

          ],
        ),
      ),
    );
  }
}
