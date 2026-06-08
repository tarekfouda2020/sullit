part of 'LocationWidgetsImports.dart';

class SuggestionsSearchFieldWidget extends StatelessWidget {
  final LocationAddressData controller;
  const SuggestionsSearchFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      controller: controller.searchFieldController,
      fillColor: context.colors.white,
      fieldTypes: FieldTypes.normal,
      type: TextInputType.text,
      action: TextInputAction.search,
      onChange: (value) => controller.whileWriting(value),
      onSubmit: () => controller.onSubmitSearch(context),
      validate: (value) => value?.noValidate(),
      hint: "Search...",
      prefixIcon: const Icon(
        CupertinoIcons.location_solid,
        color: CupertinoColors.systemRed,
      ),
      suffixIcon: GestureDetector(
          onTap: () => controller.onSubmitSearch(context),
          child: const Icon(
            CupertinoIcons.search,
            color: CupertinoColors.inactiveGray,
          )),
    );
  }
}
