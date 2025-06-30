part of 'cart_widgets_imports.dart';

class BuildCartItem extends StatelessWidget {
  final CartItem cartItem;
  final CartController controller;

  const BuildCartItem(
      {super.key, required this.cartItem, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(end: 16,top: 16,bottom: 16),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
        children: [
          CachedImage(
            url: cartItem.thumbnailImage,
            height: 70.h,
            width: 80.w,
            fit: BoxFit.fill,
          ),
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
                    Container(
                      padding: Dimens.paddingAll6PX,
                      decoration: CustomDecoration(
                          myBoxShadow: const [],
                          radius: Dimens.borderRadius5PX
                      ),
                      /// svgPicture.asset(Res.favIcon)
                      child: SvgPicture.asset(Res.emptyFavIcon),
                    ),
                  ],
                ),
                Gaps.vGap5,
                RatingBar.builder(
                  initialRating : 3,
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
                Text(cartItem.price,
                  style: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
                Gaps.vGap6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Sold By :",
                      style: AppTextStyle.s14_w600(color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Text("Munch Corner",
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
                ),
                Gaps.vGap11,
                Row(
                  children: [
                    BuildCustomBounce(
                      onTap: () => controller.onDecreaseCart(cartItem),
                      iconData: CupertinoIcons.minus,
                      margin: const EdgeInsetsDirectional.only(end: 19) ,
                    ),
                    Text(
                      cartItem.quantity.toString(),
                      style: AppTextStyle.s16_w400(
                        color: context.colors.black,
                      ),
                    ),
                    BuildCustomBounce(
                      onTap: () => controller.onIncreaseCart(cartItem),
                      iconData: CupertinoIcons.add,
                      margin: const EdgeInsetsDirectional.only(start: 19) ,
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () => controller.deleteItemFromCart(context,cartItem),
                        child: SvgPicture.asset(Res.trashIcon)
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
