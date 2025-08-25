part  of'add_new_address_widgets_imports.dart';

class UnitFieldsWidget extends StatelessWidget {
  final AddNewAddressController controller;
  const UnitFieldsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildInputLabel(
          label: tr("streetName"),
        ),
        GenericTextField(
          controller: controller.streetNameController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.streetAddress,
          fillColor: context.colors.white,
          action: TextInputAction.next,
          validate: (value) => value?.validateEmpty(),
          hint: tr("enterStreetName"),
          margin: Dimens.paddingVertical10PX,
        ),
        BuildInputLabel(
          label: tr("buildingName"),
        ),
        GenericTextField(
          controller: controller.buildingNameController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.streetAddress,
          fillColor: context.colors.white,
          action: TextInputAction.next,
          validate: (value) => value?.validateEmpty(),
          hint: tr("enterBuildingName"),
          margin: Dimens.paddingVertical10PX,
        ),
        BuildInputLabel(
          label: tr("flatNo"),
        ),
        GenericTextField(
          controller: controller.flatNumberController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.number,
          fillColor: context.colors.white,
          action: TextInputAction.next,
          validate: (value) => value?.validateEmpty(),
          hint: tr("enterBuildingName"),
          margin: Dimens.paddingVertical10PX,
        ),
      ],
    );
  }
}
