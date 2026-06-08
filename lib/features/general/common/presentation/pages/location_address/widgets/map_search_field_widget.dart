part of 'LocationWidgetsImports.dart';

class MapSearchFieldWidget extends StatelessWidget {
  final LocationAddressData controller;

  const MapSearchFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      controller: controller.searchFieldController,
      margin: const EdgeInsets.all(16),
      fillColor: context.colors.white,
      fieldTypes: FieldTypes.clickable,
      type: TextInputType.text,
      action: TextInputAction.search,
      onTab: () => controller.showPlacesSheet(context),
      validate: (value) => value?.noValidate(),
      hint: "Search...",
      prefixIcon: const Icon(
        CupertinoIcons.location_solid,
        color: CupertinoColors.systemRed,
      ),
      suffixIcon: GestureDetector(
          onTap: () => controller.showPlacesSheet(context),
          child: const Icon(
            CupertinoIcons.search,
            color: CupertinoColors.inactiveGray,
          )),
    );
  }
}
