part of 'widgets_imports.dart';

class PharmacyCardWidget extends StatelessWidget {
  final Shop shop;
  final VoidCallback onTap;
  final bool showSelectionRadio;
  const PharmacyCardWidget({
    super.key,
    required this.shop,
    required this.onTap,
    this.showSelectionRadio = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            color: showSelectionRadio && shop.isSelected
                ? context.colors.primary
                : context.colors.borderColor,
            width: 1.5,
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CachedImage(
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      height: 80,
                      fit: BoxFit.cover,
                      bgColor: context.colors.white,
                      url: shop.logo ?? "",
                    ),
                  ],
                ),
                Divider(
                  color: context.colors.borderColor,
                  thickness: 1.5,
                ),
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
                            style: AppTextStyle.s14_w400(
                                color: context.colors.textColor),
                          )
                        ],
                      ),
                      Gaps.vGap12,
                      ...(shop.categories ?? <ShopCategory>[]).take(3).map((e) {
                        return Container(
                          padding: Dimens.paddingAll10PX,
                          decoration: BoxDecoration(
                            color: const Color(0xff00749A).withAlpha(80),
                            borderRadius: Dimens.borderRadius30PX,
                          ),
                          child: Text(
                            e.name,
                            style: AppTextStyle.s12_w600(color: context.colors.oceanBlue),
                          ),
                        );
                      }),
                    ],
                  ),
                )
              ],
            ),
            if (showSelectionRadio)
              PositionedDirectional(
                top: 8,
                start: 8,
                child: CustomRadioWidget(selected: shop.isSelected),
              ),
          ],
        ),
      ),
    );
  }
}
