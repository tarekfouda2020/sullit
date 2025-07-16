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
                    CartFavIconWidget(cartItem: cartItem,controller: controller),
                  ],
                ),
                Gaps.vGap5,
                RatingBar.builder(
                  initialRating : cartItem.rating.toDouble(),
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
                    Text(cartItem.soldBy,
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
                ),
                Gaps.vGap11,
                ChangeCartQtyWidget(cartItem: cartItem, controller: controller),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
