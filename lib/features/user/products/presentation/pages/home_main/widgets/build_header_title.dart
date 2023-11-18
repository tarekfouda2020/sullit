part of 'home_main_widgets_imports.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String? btnText;
  final Function()? onTap;

  const BuildHeaderTitle(
      {Key? key, required this.title, this.btnText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp16,
        vertical: Dimens.dp10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.s17_w600(
                color: context.colors.black,
              ).copyWith(height: 0),
            ),
          ),
          if(onTap != null)
          InkWell(
            onTap: onTap ?? () {},
            child: Row(
              children: [
                Text(
                  btnText ?? tr("viewAll"),
                  style: AppTextStyle.s10_w500(
                    color: context.colors.black,
                  ),
                ),
                Gaps.hGap4,
                SvgPicture.asset(Res.arrowMore),
              ],
            ),
          )
        ],
      ),
    );
  }
}
