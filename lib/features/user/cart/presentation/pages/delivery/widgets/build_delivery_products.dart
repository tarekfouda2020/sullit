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
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 22),
          margin: Dimens.paddingVertical8PX,
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border.all(color: context.colors.gray3),
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr("seller"),
                style: AppTextStyle.s12_w400(
                  color: context.colors.textColor,
                ),
              ),
              Gaps.vGap4,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    shippingModel.name,
                    style: AppTextStyle.s15_w600(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
            ],
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
