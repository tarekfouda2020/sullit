part of 'edit_classified_product_w_imports.dart';


class BuildEditGeneralFields extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildEditGeneralFields({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            tr('general'),
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                controller: controller.productName,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: tr('productName'),
              ),
              DropdownTextField<CusProductsCat>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: tr('selectCat'),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: tr('selectCat'),
                dropKey: controller.catsDropKey,
                useName: true,
                onFind: (data) => controller.getCats(),
                fontSize:16.sp,
                selectedItem:  controller.cusProductsCat,
                radius: BorderRadius.circular(5.r),
                onChange: (value) => controller.selectCat(value!),
                validate: (value) => validateDropDown(value),
              ),
              DropdownTextField<CusProductBrand>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: tr('selectBrand'),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: tr('selectBrand'),
                dropKey: controller.brandDropKey,
                useName: true,
                onFind: (data) => controller.getBrands(),
                fontSize:16.sp,
                selectedItem: controller.cusProductsBrand,
                radius: BorderRadius.circular(5.r),
                onChange: (value) => controller.selectBrand(value!),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.location,
                validate: (value) => value!.validateEmpty(),
                label: tr('location'),
              ),
              DropdownTextField<ConditionDomainModel>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: tr('selectCondition'),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: tr('selectCondition'),
                dropKey: controller.conditionDropKey,
                useName: true,
                data: controller.conditions,
                fontSize:16.sp,
                selectedItem: controller.productCondition,
                radius: BorderRadius.circular(5.r),
                onChange: (value) => controller.selectCondition(value!),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.productTag,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: tr('productTag'),
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
