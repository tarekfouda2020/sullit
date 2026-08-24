part of 'import_widgets.dart';

class RestaurantItemWidget extends StatelessWidget {
  final ShopCardDomainModel shop;

  const RestaurantItemWidget({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(PharmacyDetailsRoute(pharmacyId: shop.id,
      type: CartTypeEnum.restaurant
      )),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: context.colors.borderColor),
        ),
        child: Column(
          children: [
            CachedImage(
                height: 95,
                width: double.infinity,
                url: shop.logo ,
                fit: BoxFit.cover,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(14))
            ),
            Gaps.vGap8,
            Gaps.line(context.colors.borderColor, 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shop.name ,
                    style: AppTextStyle.s18_w600(color: context.colors.black),
                  ),
                  Gaps.vGap11,
                  Row(
                    spacing: 10,
                    children: [
                      RatingBar.builder(
                        initialRating: shop.rating.toDouble(),
                        ignoreGestures: true,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15.sp,
                        unratedColor: context.colors.disableGray,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: context.colors.gold,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        "${shop.rating}/5",
                        style: AppTextStyle.s14_w400(color: context.colors.textColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
