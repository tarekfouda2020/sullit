part of 'edit_classified_product_w_imports.dart';

class BuildEditGeneralFields extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditGeneralFields({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr('general'),
          style: AppTextStyle.s15_w700(color: context.colors.black),
        ),
        Container(
          margin: Dimens.paddingVertical10PX,
          padding: Dimens.paddingAll10PX,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                controller: controller.productName,
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: tr('productName'),
              ),
              DropdownTextField<CusProductsCat>(
                fillColor: context.colors.white,
                itemAsString: (model) => (model).name,
                title: tr('selectCat'),
                margin: Dimens.paddingVertical10PX,
                label: tr('selectCat'),
                dropKey: controller.catsDropKey,
                useName: true,
                onFind: (data) => controller.getCats(),
                selectedItem: controller.cusProductsCat,
                onChange: (value) => controller.selectCat(value!),
                validate: (value) => validateDropDown(value),
              ),
              DropdownTextField<CusProductBrand>(
                fillColor: context.colors.white,
                itemAsString: (model) => (model).name,
                title: tr('selectBrand'),
                margin: Dimens.paddingVertical10PX,
                label: tr('selectBrand'),
                dropKey: controller.brandDropKey,
                useName: true,
                onFind: (data) => controller.getBrands(),
                selectedItem: controller.cusProductsBrand,
                onChange: (value) => controller.selectBrand(value!),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.location,
                validate: (value) => value!.validateEmpty(),
                label: tr('location'),
              ),
              DropdownTextField<ConditionDomainModel>(
                fillColor: context.colors.white,
                itemAsString: (model) => (model).name,
                title: tr('selectCondition'),
                margin: Dimens.paddingVertical10PX,
                label: tr('selectCondition'),
                dropKey: controller.conditionDropKey,
                useName: true,
                data: controller.conditions,
                selectedItem: controller.productCondition,
                onChange: (value) => controller.selectCondition(value!),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.productTag,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: tr('productTag'),
              ),
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.unit,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: tr('productUnit'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
