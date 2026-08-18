part of 'customers_products_w_imports.dart';

class BuildMainCategoryItem extends StatelessWidget {
  final CustomerProductsController controller;
  final Category categoryModel;
  final int index;
  const BuildMainCategoryItem({
    super.key,
    required this.controller,
    required this.categoryModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Color color = categoryModel.isSelected == true
        ? context.colors.primary
        : context.colors.white;
    Color textColor = categoryModel.isSelected == true
        ? context.colors.white
        : context.colors.primary;
    return InkWell(
      onTap: () =>
          controller.onChangeMainCategory(context, categoryModel, index),
      child: Container(
        height: 30.h,
        padding: Dimens.paddingHorizontal15PX,
        margin: Dimens.paddingHorizontal5PX,
        decoration: BoxDecoration(
          color: color,
          borderRadius: Dimens.borderRadius5PX,
          border: Border.all(color: context.colors.greyWhite),
        ),
        alignment: Alignment.center,
        child: Text(
          categoryModel.name,
          style: AppTextStyle.s10_w400(color: textColor),
        ),
      ),
    );
  }
}
