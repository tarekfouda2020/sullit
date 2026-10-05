part of 'imports.dart';

class WorkingItemWidget extends StatelessWidget {
  const WorkingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tr('working...'), style: AppTextStyle.s24_w800(color: context.colors.black)),
        Gaps.vGap10,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyle.s12_w400(color: context.colors.textColor),
            children: [
              TextSpan(
                text: tr('priceComparisonLoadedFor'),
              ),
              TextSpan(
                text: 'Al Mushrif, Abu Dhabi',
                style: AppTextStyle.s12_w400(color: context.colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
