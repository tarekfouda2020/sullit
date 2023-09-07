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
      decoration: CustomDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              CachedImage(
                url: cartItem.thumbnailImage,
                height: 70.h,
                width: 80.w,
                fit: BoxFit.fill,
              ),
              Gaps.hGap12,
              Expanded(
                child: Text(
                  cartItem.name,
                  style: AppTextStyle.s14_w400(color: context.colors.black)
                      .copyWith(height: 1.5),
                ),
              ),
            ],
          ),
          Padding(
            padding: Dimens.paddingAll10PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildPriceItem(
                  title: "Price",
                  price: cartItem.price,
                  currency: cartItem.currencySymbol,
                ),
                BuildPriceItem(
                  title: "Tax",
                  price: cartItem.tax,
                  currency: cartItem.currencySymbol,
                ),
                BuildPriceItem(
                  title: "Total",
                  price: cartItem.total,
                  currency: cartItem.currencySymbol,
                ),
              ],
            ),
          ),
          Row(
            children: [
              BuildCustomBounce(
                onTap: () => controller.onIncreaseCart(cartItem),
                iconData: CupertinoIcons.add,
              ),
              Text(
                cartItem.quantity.toString(),
                style: AppTextStyle.s16_w400(
                  color: context.colors.black,
                ),
              ),
              BuildCustomBounce(
                onTap: () => controller.onDecreaseCart(cartItem),
                iconData: CupertinoIcons.minus,
              ),
              const Spacer(),
              BuildCustomBounce(
                onTap: () => controller.deleteItemFromCart(cartItem),
                iconData: CupertinoIcons.delete,
                deleteIcon: true,
              ),
            ],
          ),
          Gaps.vGap10
        ],
      ),
    );
  }
}
