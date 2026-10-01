part of 'imports.dart';

class SuggestionsProductItemWidget extends StatelessWidget {
  final Color bgColor;
  final Color shopColor;
  final Color shopIconColor;
  final bool isLowest;

  const SuggestionsProductItemWidget(
      {super.key, required this.bgColor, required this.shopColor, required this.isLowest, required this.shopIconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.borderColor),
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isLowest
              ? Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: context.colors.lightGreen,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: context.colors.darkGreen2),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(Res.offer2Icon),
                      Gaps.hGap4,
                      Text(
                        'LOWEST PRICE',
                        style: AppTextStyle.s12_w600(color: context.colors.darkGreen2),
                      ),
                    ],
                  ),
                )
              : Gaps.vGap2,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: shopColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  Res.homeIcon,
                  color: shopIconColor,
                  height: 20,
                  width: 20,
                ),
              ),
              Gaps.hGap12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sahla Shop',
                      style: AppTextStyle.s14_w700(color: context.colors.black),
                    ),
                    Gaps.vGap4,
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 12.sp,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => Icon(
                        Icons.star_rounded,
                        color: context.colors.yellow,
                      ),
                      unratedColor: context.colors.grey,
                      onRatingUpdate: (rating) {},
                    ),
                    Gaps.vGap4,
                    Text(
                      '2.1 km away',
                      style: AppTextStyle.s12_w400(color: context.colors.textColor),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DirhamPrice(
                    amount: "8.50",
                    textStyle: AppTextStyle.s20_w400(color: context.colors.darkGreen2),
                  ),
                  Gaps.vGap4,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Save',
                        style: AppTextStyle.s10_w700(color: context.colors.darkGreen2),
                      ),
                      Gaps.hGap4,
                      DirhamPrice(
                        amount: "8.50",
                        textStyle: AppTextStyle.s10_w700(color: context.colors.darkGreen2),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Gaps.vGap12,
          Gaps.line(context.colors.gray4, 10.h),
          Gaps.vGap8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'View Store Details',
                      style: AppTextStyle.s12_w700(color: context.colors.black),
                    ),
                    Gaps.hGap4,
                    Icon(
                      Icons.open_in_new,
                      size: 14,
                      color: context.colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                decoration: BoxDecoration(
                  color: context.colors.darkGreen2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Res.shopIcon,
                      color: context.colors.white,
                    ),
                    Gaps.hGap8,
                    Text(
                      'Add to Cart',
                      style: AppTextStyle.s12_w700(color: context.colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
