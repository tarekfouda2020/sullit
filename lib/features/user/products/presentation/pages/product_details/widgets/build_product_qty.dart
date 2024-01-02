part of 'product_details_widgets_imports.dart';

class BuildProductQty extends StatelessWidget {
  final ProductDetailsController controller;
  final Product productModel;

  const BuildProductQty(
      {super.key, required this.controller, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${tr("quantity")} : ",
          style: AppTextStyle.s15_w700(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: controller.qtyCubit,
          builder: (context, state) {
            bool hasVariant = productModel.variant != null;
            return Row(
              children: [
                BuildCustomBounce(
                  onTap: () => controller.decreaseQty(),
                  iconData: CupertinoIcons.minus,
                ),
                Gaps.hGap10,
                Text(
                  "${state.data}",
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                ),
                Gaps.hGap10,
                BuildCustomBounce(
                  onTap: () => controller.increaseQty(),
                  iconData: CupertinoIcons.add,
                ),
                Gaps.hGap10,
                Visibility(
                  visible: hasVariant ? productModel.variant!.currentStock! > 0 : false,
                  replacement: Text(
                    tr("outOfStock"),
                    style: AppTextStyle.s15_w700(
                      color: context.colors.primary,
                    ),
                  ),
                  child: Text(
                    "(${productModel.variant?.currentStock} ${tr("available")})",
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ),
                  ),
                )
              ],
            );
          },
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
        Text(
          "${tr("totalPrice")} : ",
          style: AppTextStyle.s15_w700(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        Text(
          "${productModel.variant?.calculablePrice} ${productModel.currencySymbol}",
          style: AppTextStyle.s18_w500(
            color: context.colors.primary,
          ),
        ),
        Gaps.vGap10,
      ],
    );
  }
}
