part of 'widgets_imports.dart';

class BuildPharmacyCartItem extends StatelessWidget {
  final GeneralCartItem cartItem;
  final PharmacyCartController controller;

  const BuildPharmacyCartItem(
      {super.key, required this.cartItem, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(
          end: 16, top: 16, bottom: 16, start: 5),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Column(
        children: [
          if (cartItem.prescriptionRequired == true)...[
             RequiredPrescriptionNoteWidget(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              size: 13,
              style: AppTextStyle.s10_w400(color: context.colors.primary),
               radius: BorderRadius.circular(7),
            ),
            Gaps.vGap10,
          ],
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: cartItem.thumbnailImage,
                height: 60,
                width: 60,
                fit: BoxFit.fill,
              ),
              Gaps.hGap11,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            cartItem.name,
                            style:
                                AppTextStyle.s14_w600(color: context.colors.black)
                                    .copyWith(height: 1.5),
                          ),
                        ),
                        PharmacyCartFavIconWidget(
                            cartItem: cartItem, controller: controller),
                      ],
                    ),
                    Gaps.vGap5,
                    RatingBar.builder(
                      initialRating: cartItem.rating,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 10.sp,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => Icon(
                        Icons.star_rounded,
                        color: context.colors.yellow,
                      ),
                      unratedColor: context.colors.grey,
                      onRatingUpdate: (rating) {},
                    ),
                    Gaps.vGap5,
                    DirhamPrice(
                      amount: cartItem.price,
                      currencyStyle:
                          AppTextStyle.s16_w400(color: context.colors.primary),
                      textStyle:
                          AppTextStyle.s14_w600(color: context.colors.primary),
                    ),
                    Gaps.vGap11,
                    ChangePharmacyCartQtyWidget(
                      cartItem: cartItem,
                      controller: controller,
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
