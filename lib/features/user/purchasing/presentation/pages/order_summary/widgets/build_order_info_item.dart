part of 'order_summary_widgets_imports.dart';

class BuildOrderInfoItem extends StatelessWidget {
  final String title, subTitle;
  final Color? subTitleColor;

  const BuildOrderInfoItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.subTitleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: subTitle.isNotEmpty,
      child: Padding(
        padding: Dimens.paddingVertical8PX,
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
            Gaps.hGap15,
            Expanded(
              child: Text(
                subTitle,
                style: AppTextStyle.s12_w400(
                  color: subTitleColor ?? context.colors.black,
                ).copyWith(height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
