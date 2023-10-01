part of 'product_details_widgets_imports.dart';

class BuildProductButtons extends StatelessWidget {
  final ProductDetailsController controller;
  final ProductDetailsDomainModel detailsModel;

  const BuildProductButtons(
      {super.key, required this.controller, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    bool hasVariant = detailsModel.product.variant != null;
    return Visibility(
      visible: hasVariant ?  detailsModel.product.variant!.currentStock! > 0 : false ,
      child: Padding(
        padding: Dimens.standardPadding,
        child: SizedBox(
          height: 45.h,
          child: Row(
            children: [
              InkWell(
                onTap: () => controller.onAddToCart(context),
                child: Container(
                  padding: Dimens.paddingAll15PX,
                  margin: Dimens.paddingAll5PX,
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius5PX,
                  ),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: context.colors.white,
                    size: 15.sp,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => controller.onBuyProduct(context),
                  child: Container(
                    alignment: Alignment.center,
                    padding: Dimens.paddingVertical10PX,
                    margin: Dimens.paddingAll5PX,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: Dimens.borderRadius5PX,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: context.colors.white,
                          size: 15.sp,
                        ),
                        Gaps.hGap10,
                        Text(
                          tr('buyNow'),
                          style: AppTextStyle.s13_w500(
                            color: context.colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
