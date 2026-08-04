part of 'seller_products_widgets_imports.dart';

class SellerPageProductsSectionWidget extends StatelessWidget {
  final SellerProductsController controller;
  const SellerPageProductsSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal20PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tr("products"),
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          GestureDetector(
            onTap: () => controller.openDrawerFilter(),
            child: Padding(
              padding: Dimens.paddingAll5PX,
              child: SvgPicture.asset(
                Res.filterIcon,
              ),
            ),
          )
        ],
      ),
    );
  }
}
