part of 'customers_products_w_imports.dart';

class BuildSubCategoriesView extends StatelessWidget {
  final CustomerProductsController controller;
  final int position;
  final ProductSpecifications parentSubCategory;

  const BuildSubCategoriesView(
      {super.key,
      required this.controller,
      required this.position,
      required this.parentSubCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: Dimens.paddingAll5PX,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: parentSubCategory.subCategories.length,
        padding: EdgeInsets.zero,
        itemBuilder: (_, index) {
          return BuildSubCategoryItem(
            controller: controller,
            subCategoryModel: parentSubCategory.subCategories[index],
            selected: parentSubCategory.selectedId!,
            index: position,
          );
        },
      ),
    );
  }
}
