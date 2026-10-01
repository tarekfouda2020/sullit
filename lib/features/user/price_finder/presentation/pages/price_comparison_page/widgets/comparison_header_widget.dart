part of 'imports.dart';

class ComparisonHeaderWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const ComparisonHeaderWidget({super.key, required this.title, required this.subTitle});

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
        Text(
          subTitle,
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
      ],
    );
  }
}
