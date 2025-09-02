part of 'seller_products_widgets_imports.dart';

class SellerBrandItemWidget extends StatelessWidget {
  final BrandDomainModel brand;
  final SellerProductsController controller;
  const SellerBrandItemWidget({super.key, required this.brand, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onSelectBrand(context,brand),
      child: Container(
        padding: Dimens.paddingAll13PX,
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            width: brand.isSelected ? 1.3 : 1,
            color: brand.isSelected
                ?context.colors.primary
                :context.colors.disableGray
          )
        ),
        child: Text(
          brand.name,
          style: AppTextStyle.s14_w400(
            color: context.colors.black,
          ),
        ),
      ),
    );
  }
}
