part of 'widgets_imports.dart';

class ComparisonHeaderWidget extends StatelessWidget {
  final String title;
  final String subTitle;
 final PriceComparisonController controller;
  const ComparisonHeaderWidget({super.key, required this.title, required this.subTitle, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s22_w700(color: context.colors.black),
          ),
          Gaps.vGap12,
          Row(
            children: [
              Text(
                subTitle,
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),

              const UserCurrentLocationDescriptionWidget(),
            ],
          )
        ],
      ),
    );
  }
}
