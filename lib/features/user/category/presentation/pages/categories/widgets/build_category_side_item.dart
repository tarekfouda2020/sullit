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
              ? context.colors.gray2
              : context.colors.lightPrimary,
        ),
        padding: Dimens.paddingAll20PX,
        child: Text(
          categoryModel.name,
          textAlign: TextAlign.center,
          style: AppTextStyle.s14_w600(
            color:categoryModel.isSelected == false
                ? context.colors.black
                :context.colors.primary,
          ),
        ),
      ),
    );
  }
}
