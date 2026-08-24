part of 'widgets_imports.dart';

class PharmacyCardWidget extends StatelessWidget {
  final ShopCardDomainModel shop;
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
        color: context.colors.transparent,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedImage(
                  width: MediaQuery.sizeOf(context).width,
                  height: 100,
                  fit: BoxFit.cover,
                  bgColor: context.colors.transparent,
                  url: shop.logo ?? "",
                  borderRadius: Dimens.topRadius12Px,
                  border: Border(
                      top: _buildBorderSide(context),
                      left: _buildBorderSide(context),
                      right: _buildBorderSide(context)),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.bottomRadius12Px,
                    border: Border(
                        bottom: _buildBorderSide(context),
                        left: _buildBorderSide(context),
                        right: _buildBorderSide(context)),
                  ),
                  child: Column(
                    children: [
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
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: context.colors.gold,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                Text(
                                  "${shop.rating ?? 0}/5",
                                  style: AppTextStyle.s14_w400(color: context.colors.textColor),
                                )
                              ],
                            ),
                            Gaps.vGap12,
                            ...(shop.categoriesNames.split("-")).take(3).map((e) {
                              return Container(
                                padding: Dimens.paddingAll10PX,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00749A).withAlpha(80),
                                  borderRadius: Dimens.borderRadius30PX,
                                ),
                                child: Text(
                                  "$e - ",
                                  style: AppTextStyle.s12_w600(color: context.colors.oceanBlue),
                                ),
                              );
                            }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            if (showSelectionRadio)
              PositionedDirectional(
                top: 8,
                start: 8,
                child: CustomRadioWidget(selected: shop.isSelect),
              ),
          ],
        ),
      ),
    );
  }

  BorderSide _buildBorderSide(BuildContext context) {
    return BorderSide(
        color: showSelectionRadio && shop.isSelect ? context.colors.primary : context.colors.borderColor, width: 1.5);
  }
}
