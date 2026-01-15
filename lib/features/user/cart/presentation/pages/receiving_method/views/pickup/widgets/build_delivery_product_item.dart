part of 'delivery_widgets_imports.dart';

class BuildDeliveryProductItem extends StatelessWidget {
  final CartItem cartItem;

  const BuildDeliveryProductItem({Key? key, required this.cartItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Row(
        children: [
          CachedImage(
            borderRadius: Dimens.borderRadius10PX,
            url: cartItem.thumbnailImage,
            height: 60.r,
            width: 60.r,
          ),
          Gaps.hGap12,
          Expanded(
            child: Text(
              cartItem.name,
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
