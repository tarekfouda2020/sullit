part of 'category_details_widgets_imports.dart';

class BuildSubCategoryItem extends StatelessWidget {
  final Category subCategoryModel;
  final CategoryDetailsController categoryDetailsController;
  final int selected;
  final int index;

  const BuildSubCategoryItem(
      {super.key,
      required this.subCategoryModel,
      required this.categoryDetailsController,
      required this.selected,
      required this.index});

  @override
  Widget build(BuildContext context) {
    Color color = (subCategoryModel.id == selected ||
            subCategoryModel.parentId == selected)
        ? context.colors.primary
        : context.colors.white;
    Color textColor = (subCategoryModel.id == selected ||
            subCategoryModel.parentId == selected)
        ? context.colors.white
        : context.colors.primary;
    return InkWell(
      // onTap: () => categoryDetailsController.onSelectSubCategory(
      //     context, selected, subCategoryModel, index),
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
          subCategoryModel.name,
          style: AppTextStyle.s10_w400(color: textColor),
        ),
      ),
    );
  }
}
