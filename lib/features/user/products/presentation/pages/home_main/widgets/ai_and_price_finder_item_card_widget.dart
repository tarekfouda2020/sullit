part of 'home_main_widgets_imports.dart';

class AiAndPriceFinderItemCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final Color bgColor;
  final Color? arrowColor;
  final Color bgIconColor;
  final double iconPadding;

  const AiAndPriceFinderItemCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.arrowColor,
    required this.bgColor,
    required this.bgIconColor,
    required this.iconPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(iconPadding),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgIconColor,
            ),
            child: SvgPicture.asset(
              image,
            ),
          ),
          Gaps.hGap6,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.s14_w800(
                      color: context.colors.black,
                    ).copyWith(height: 1.3),
                  ),
                ),
                Gaps.vGap3,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        subTitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s11_w400(
                          color: context.colors.textColor,
                        ).copyWith(height: 1.3),
                      ),
                    ),
                    Gaps.hGap4,
                    Transform.rotate(
                      angle: context.isArabic ? pi : 0,
                      child: SvgPicture.asset(
                        Res.arrowDetails,
                        color: arrowColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
