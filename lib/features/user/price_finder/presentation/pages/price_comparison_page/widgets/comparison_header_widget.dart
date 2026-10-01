part of 'imports.dart';

class ComparisonHeaderWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String subTitleName;

  const ComparisonHeaderWidget({super.key, required this.title, required this.subTitle, required this.subTitleName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s22_w700(color: context.colors.black),
        ),
        Gaps.vGap12,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
            children: [
              TextSpan(
                text: subTitle,
              ),
              TextSpan(
                text: subTitleName,
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
