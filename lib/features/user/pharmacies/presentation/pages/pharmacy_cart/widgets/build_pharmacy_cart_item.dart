part of 'widgets_imports.dart';

class BuildPharmacyCartItem extends StatelessWidget {
  final CartItem cartItem;
  final PharmacyCartController controller;

  const BuildPharmacyCartItem(
      {super.key, required this.cartItem, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(end: 16, top: 16, bottom: 16, start: 5),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
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
                        style: AppTextStyle.s14_w600(color: context.colors.black)
                            .copyWith(height: 1.5),
                      ),
                    ),
                    PharmacyCartFavIconWidget(cartItem: cartItem, controller: controller),
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
                  currencyStyle: AppTextStyle.s16_w400(color: context.colors.primary),
                  textStyle: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
                Gaps.vGap6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "${tr("soldBy")} :",
                      style: AppTextStyle.s12_w400(color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Text(
                      cartItem.soldBy,
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
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
    );
  }
}
