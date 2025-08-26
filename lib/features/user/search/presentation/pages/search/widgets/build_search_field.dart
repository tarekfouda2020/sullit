part of 'search_widgets_imports.dart';

class BuildSearchField extends StatelessWidget {
  final search.SearchController controller;

  const BuildSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fieldTypes: FieldTypes.normal,
      type: TextInputType.text,
      action: TextInputAction.search,
      autoFocus: true,
      fillColor: context.colors.white,
      controller: controller.searchController,
      validate: (value) => value?.noValidate(),
      hint: tr('searchCats'),
      onSubmit: () => controller.onPressSearch(context),
      suffixIcon: InkWell(
        onTap: () => controller.onPressSearch(context),
        child: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(Res.searchIcon),
        ),
      ),
      margin: Dimens.standardPadding,
    );
  }
}
