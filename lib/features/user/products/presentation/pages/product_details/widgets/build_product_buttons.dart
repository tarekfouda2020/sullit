part of 'product_details_widgets_imports.dart';

class BuildProductButtons extends StatelessWidget {
final ProductDetailsController controller;

  const BuildProductButtons({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal15PX,
      child: SizedBox(
        height: 45.h,
        child: Row(
          children: [
            InkWell(
              onTap: (){},
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
                onTap: () => getIt<AddToCartHelper>().addToCartDialog(
                  context,
                  controller.detailsCubit.state.data!.product,
                ),
                // AutoRouter.of(context).push(const CartRoute()),
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
                        "Buy Now",
                        style: AppTextStyle.s12_w400(
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
    );
  }
}
