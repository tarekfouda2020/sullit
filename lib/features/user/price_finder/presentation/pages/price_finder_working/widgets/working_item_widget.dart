part of 'imports.dart';

class SearchingAreaNameWidget extends StatelessWidget {
  const SearchingAreaNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         tr('priceComparisonLoadedFor'),
            style: AppTextStyle.s12_w400(color: context.colors.textColor)
        ),
        Gaps.hGap4,
        const Flexible(child: UserCurrentLocationDescriptionWidget()),
      ],
    );
  }
}
