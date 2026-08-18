part of 'delivery_widgets_imports.dart';

class BuildDeliveryProductItem extends StatelessWidget {
  final GeneralCartItem cartItem;

  const BuildDeliveryProductItem({Key? key, required this.cartItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      decoration: const CustomDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            borderRadius: Dimens.borderRadius10PX,
            url: cartItem.thumbnailImage,
            height: 60.r,
            width: 60.r,
          ),
          Gaps.hGap12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(text: cartItem.name, children: [
                    TextSpan(
                        text: "   ${AppTheme.dirhamIcon}",
                        style: AppTextStyle.s15_w400(
                                color: context.colors.primary)
                            .copyWith(fontFamily: AppTheme.dirhamFontFamily)),
                    TextSpan(
                        text: " ${cartItem.price}",
                        style:
                            AppTextStyle.s15_w500(color: context.colors.primary)
                                .copyWith()),
                  ]),
                  style: AppTextStyle.s14_w400(color: context.colors.black)
                      .copyWith(height: 1.3),
                ),
                Gaps.vGap8,
                Gaps.vGap5,
                Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${tr("total")} :",
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black)),
                    DirhamPrice(
                      amount: cartItem.total,
                      textStyle:
                          AppTextStyle.s16_w400(color: context.colors.primary),
                    ),
                    const Spacer(),
                    Text("${tr("quantity")} : ${cartItem.quantity}",
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black)),
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
