part of '../instore_cart_page_imports.dart';

class InstoreCartItemWidget extends StatelessWidget {
  final InstoreCartItemModel cartItem;
  final InstoreCartPageController controller;

  const InstoreCartItemWidget({
    super.key,
    required this.cartItem,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final unitPrice = cartItem.price.toStringAsFixed(2);
    final totalPrice = (cartItem.qnt * cartItem.price).toStringAsFixed(2);

    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(
        end: 16,
        top: 16,
        bottom: 16,
        start: 5,
      ),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: cartItem.image,
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          ),
          Gaps.hGap11,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.name,
                  style: AppTextStyle.s14_w600(color: context.colors.black)
                      .copyWith(height: 1.5),
                ),
                Gaps.vGap8,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr('unitPrice'),
                          style: AppTextStyle.s12_w400(
                            color: context.colors.textColor,
                          ),
                        ),
                        Gaps.vGap4,
                        DirhamPrice(
                          amount: unitPrice,
                          currencyStyle: AppTextStyle.s14_w400(
                            color: context.colors.textColor,
                          ),
                          textStyle: AppTextStyle.s14_w600(
                            color: context.colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          tr('totalPrice'),
                          style: AppTextStyle.s12_w400(
                            color: context.colors.textColor,
                          ),
                        ),
                        Gaps.vGap4,
                        DirhamPrice(
                          amount: totalPrice,
                          currencyStyle: AppTextStyle.s16_w400(
                            color: context.colors.primary,
                          ),
                          textStyle: AppTextStyle.s14_w600(
                            color: context.colors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gaps.vGap11,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InstoreQtyButtonWidget(
                      iconData: CupertinoIcons.minus,
                      onTap: () => controller.onDecreaseItem(context, cartItem),
                    ),
                    Gaps.hGap19,
                    Text(
                      cartItem.qnt.toString(),
                      style: AppTextStyle.s18_w600(
                        color: context.colors.black,
                      ),
                    ),
                    Gaps.hGap19,
                    InstoreQtyButtonWidget(
                      iconData: CupertinoIcons.add,
                      onTap: () => controller.onIncreaseItem(cartItem),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => controller.onDeleteItem(context, cartItem),
                      child: SvgPicture.asset(Res.trashIcon),
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
