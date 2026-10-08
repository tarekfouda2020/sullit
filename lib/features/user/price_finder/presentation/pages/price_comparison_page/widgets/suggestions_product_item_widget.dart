part of 'widgets_imports.dart';

class SuggestionsProductItemWidget extends StatelessWidget {
  final PriceFinderDeal deal;
  final PriceComparisonController controller;
  const SuggestionsProductItemWidget({super.key, required this.deal, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colors.borderColor,
        ),
        color: getBgColor(context),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isLowest)
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: context.colors.lightGreen,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colors.darkGreen2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    Res.offer2Icon,
                  ),
                  Gaps.hGap4,
                  Text(
                    'LOWEST PRICE',
                    style: AppTextStyle.s12_w600(
                      color: context.colors.darkGreen2,
                    ),
                  ),
                ],
              ),
            )
          else
            Gaps.vGap2,

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: getShopColor(context),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  Res.homeIcon,
                  colorFilter: ColorFilter.mode(getShopIconColor(context), BlendMode.srcIn),
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
                      deal.storeName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s14_w700(
                        color: context.colors.black,
                      ),
                    ),

                    Gaps.vGap4,

                    RatingBar.builder(
                      initialRating: deal.rating.toDouble(),
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: deal.rating,
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
                      '${deal.distanceKm.toStringAsFixed(2)} km away',
                      style: AppTextStyle.s12_w400(
                        color: context.colors.textColor,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DirhamPrice(
                    amount: deal.price.toStringAsFixed(2),
                    textStyle: AppTextStyle.s20_w400(
                      color: context.colors.darkGreen2,
                    ),
                  ),

                  Gaps.vGap4,

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Save',
                        style: AppTextStyle.s10_w700(
                          color: context.colors.darkGreen2,
                        ),
                      ),

                      Gaps.hGap4,

                      DirhamPrice(
                        amount: deal.savings.toStringAsFixed(2),
                        textStyle: AppTextStyle.s10_w700(
                          color: context.colors.darkGreen2,
                        ),
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
                onTap: () => controller.openStoreDetails(context, deal.shopId),
                child: Row(
                  children: [
                    Text(
                      'View Store Details',
                      style: AppTextStyle.s12_w700(
                        color: context.colors.black,
                      ),
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

              GestureDetector(
                onTap: () => controller.addProductToCart(context, deal.variantId,deal.branchId!),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  decoration: BoxDecoration(
                    color: context.colors.darkGreen2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Res.shopIcon,
                        colorFilter: ColorFilter.mode(context.colors.white, BlendMode.srcIn),
                      ),
                      Gaps.hGap8,
                      Text(
                        'Add to Cart',
                        style: AppTextStyle.s12_w700(
                          color: context.colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool get isLowest => deal.isLowest;

  Color getBgColor(BuildContext context) {
    return isLowest ? context.colors.lightGreen3 : context.colors.white;
  }

  Color getShopColor(BuildContext context) {
    return isLowest ? context.colors.darkGreen2 : context.colors.customBackground;
  }

  Color getShopIconColor(BuildContext context) {
    return isLowest ? context.colors.white : context.colors.black;
  }
}