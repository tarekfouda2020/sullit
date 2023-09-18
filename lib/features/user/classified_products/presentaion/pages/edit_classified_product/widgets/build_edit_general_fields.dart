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
            "General",
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
                label: 'Product Name',
              ),
              DropdownTextField<CusProductsCat>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: "Select category",
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: "Select category",
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
                title: "Select brand",
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: "Select brand",
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
                label: 'Location',
              ),
              DropdownTextField<ConditionDomainModel>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: "Select condition",
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: "Select condition",
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
                label: 'Product Tag',
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.unit,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Product unit',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
