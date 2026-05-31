part of 'widgets_imports.dart';


class PharmacyCardWidget extends StatelessWidget {
  final Shop shop;
  const PharmacyCardWidget({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(shop.id != null){
          AutoRouter.of(context).push( PharmacyCategoriesRoute(pharmacyId: shop.id!));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            color: context.colors.borderColor,
            width: 1.5
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedImage(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 80,
                  fit: BoxFit.cover,
                  bgColor: context.colors.white,
                  url: shop.logo ?? "",
                ),
              ],
            ),
            Divider(color: context.colors.borderColor, thickness: 1.5,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shop.name ?? "",
                    style: AppTextStyle.s18_w600(color: context.colors.black),
                  ),
                  Gaps.vGap12,
                  Row(
                    spacing: 10,
                    children: [
                      RatingBar.builder(
                        initialRating: shop.rating?.toDouble() ?? 0.0,
                        ignoreGestures: true,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15.sp,
                        unratedColor: context.colors.disableGray,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        "${shop.rating ?? 0}/5",
                        style: AppTextStyle.s14_w400(color: context.colors.textColor),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
