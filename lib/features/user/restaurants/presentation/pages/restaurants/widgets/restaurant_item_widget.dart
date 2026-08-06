part of 'import_widgets.dart';

class RestaurantItemWidget extends StatelessWidget {
  const RestaurantItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: context.colors.borderColor),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 110,
            child: Padding(
              padding: EdgeInsets.all(18),
              child: CachedImage(
                url:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvOcBZ81pEEUO5vVLZ9qnHxc8eqEmn_9cphmmoCIDbcw&s=10",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gaps.line(context.colors.borderColor, 1),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Andoks Restaurant",
                  style: AppTextStyle.s18_w600(color: context.colors.black),
                ),
                Gaps.vGap11,
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        size: 16,
                        color: context.colors.gold,
                      ),
                    ),
                    Gaps.hGap8,
                    Text(
                      "5/5",
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
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
