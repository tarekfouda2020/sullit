part of 'search_widgets_imports.dart';

class BuildSearchField extends StatelessWidget {
  final SearchController controller;

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
      hint: "Search...",
      suffixIcon: InkWell(
        onTap: () => controller.getSearchResults(),
        child: Icon(
          Icons.search,
          color: context.colors.black,
        ),
      ),
      margin: Dimens.standardPadding,
    );
  }
}
