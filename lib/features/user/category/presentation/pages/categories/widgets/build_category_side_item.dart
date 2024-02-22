part of 'categories_widgets_imports.dart';

class BuildCategorySideItem extends StatelessWidget {
  final Category categoryModel;
  final CategoriesController categoriesController;

  const BuildCategorySideItem({
    super.key,
    required this.categoryModel,
    required this.categoriesController,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => categoriesController.onSelectMainCat(categoryModel),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: categoryModel.isSelected == false
              ? context.colors.greyWhite
              : context.colors.transparent,
        ),
        padding: Dimens.paddingAll20PX,
        child: Text(
          categoryModel.name,
          textAlign: TextAlign.center,
          style: AppTextStyle.s12_w700(
            color: context.colors.black,
          ),
        ),
      ),
    );
  }
}
