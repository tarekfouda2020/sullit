part of 'all_product_page_imports.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: context.colors.greyWhite)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Res.sortLogo,
            height: 16,
            width: 16,
          ),
          Text(
            'sort by',
            style: AppTextStyle.s14_w500(color: context.colors.textColor),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            decoration: BoxDecoration(
              color: context.colors.authField,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(
                  'Most widespread',
                  style: AppTextStyle.s10_w500(color: context.colors.textColor),
                ),
                Gaps.hGap5,
                Icon(
                  Icons.keyboard_arrow_down,
                  color: context.colors.textColor,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 2,
            color: context.colors.greyWhite,
          ),
          Container(
            width: 36.63,
            height: 34,
            decoration: BoxDecoration(
              color: context.colors.authField,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.menu_outlined,
              color: context.colors.blackOpacity,
            ),
          ),
          Container(
            width: 36.63,
            height: 34,
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.widgets,
              color: context.colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
