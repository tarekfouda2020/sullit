part of 'category_details_widgets_imports.dart';

class BrandsSearchFiledWidget extends StatelessWidget {
  final CategoryDetailsController controller;
  const BrandsSearchFiledWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.dp35,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        controller: controller.brandsSearchCtr,
        hint: "Search in brands...",
        type: TextInputType.text,
        fillColor: context.colors.white,
        action: TextInputAction.search,
        contentPadding: const EdgeInsetsDirectional.only(start: 15),
        validate: (value) => value?.noValidate(),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => controller.refreshBrands(context),
                child: SvgPicture.asset(Res.searchIcon,
                colorFilter: ColorFilter.mode(
                    context.colors.textColor,
                    BlendMode.srcIn
                ),
                ),
              ),
              Gaps.hGap10,
            ],
          ),
        ),
        onSubmit: () => controller.refreshBrands(context),
      ),
    );
  }
}
