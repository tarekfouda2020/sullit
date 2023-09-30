part of 'categories_widgets_imports.dart';

class BuildCategorySearchView extends StatelessWidget {
  final CategoriesController categoriesController;

  const BuildCategorySearchView(
      {super.key, required this.categoriesController});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fillColor: context.colors.white,
      fieldTypes: FieldTypes.normal,
      controller: categoriesController.searchController,
      type: TextInputType.text,
      action: TextInputAction.search,
      validate: (value) => value?.noValidate(),
      hint: tr('searchCats'),
      margin: Dimens.paddingHorizontal15PX,
      onChange: (val) => categoriesController.onSearchByName(val),
    );
  }
}
