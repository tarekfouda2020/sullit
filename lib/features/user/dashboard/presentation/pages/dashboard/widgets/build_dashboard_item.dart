part of 'dashboard_widgets_imports.dart';

class BuildDashboardItem extends StatelessWidget {
  final List<Color> colors;
  final String title;
  final String subTitle;

  const BuildDashboardItem(
      {Key? key,
      required this.colors,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      height: 150.spMin,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: AlignmentDirectional.topStart),
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Gaps.vGap10,
          Text(
            subTitle,
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
