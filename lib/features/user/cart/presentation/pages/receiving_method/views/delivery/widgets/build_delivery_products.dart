part of 'delivery_widgets_imports.dart';

class BuildDeliveryProducts extends StatelessWidget {
  final SellerShipping shippingModel;

  const BuildDeliveryProducts({Key? key, required this.shippingModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical8PX,
          decoration: BoxDecoration(
            color: context.colors.offWhite,
            border: Border.all(color: context.colors.white),
            borderRadius: Dimens.borderRadius10PX,
          ),
          child: Text(
            shippingModel.name,
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
        ),
        ...List.generate(
          shippingModel.items.length,
          (index) => BuildDeliveryProductItem(
            cartItem: shippingModel.items[index],
          ),
        )
      ],
    );
  }
}
