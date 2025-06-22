part of 'categories_widgets_imports.dart';

class BuildCategorySearchView extends StatelessWidget {
  final CategoriesController categoriesController;

  const BuildCategorySearchView(
      {super.key, required this.categoriesController});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fieldTypes: FieldTypes.normal,
      margin: Dimens.paddingHorizontal15PX,
      hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
      type: TextInputType.text,
      controller: categoriesController.searchController,
      action: TextInputAction.search,
      radius: const BorderRadius.all(Radius.circular(30)),
      validate: (value) {},
      autoFocus: false,
      fillColor: context.colors.white,
      enableBorderColor: context.colors.borderColor,
      focusBorderColor: context.colors.borderColor,
      hint: tr('searchCats'),
      suffixIcon: InkWell(
        onTap: () => AutoRouter.of(context).push(
          SearchRoute(
            searchText: categoriesController.searchController.text,
          ),
        ),
        child: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(Res.searchIcon),
        ),
      ),
    );
    // return GenericTextField(
    //   fillColor: context.colors.white,
    //   fieldTypes: FieldTypes.normal,
    //   controller: categoriesController.searchController,
    //   type: TextInputType.text,
    //   action: TextInputAction.search,
    //   validate: (value) => value?.noValidate(),
    //   hint: tr('searchCats'),
    //   margin: Dimens.paddingHorizontal15PX,
    //   onChange: (val) => categoriesController.onSearchByName(val),
    // );
  }
}
