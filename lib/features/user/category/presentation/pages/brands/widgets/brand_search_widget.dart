part of 'brands_widgets_imports.dart';

class BrandSearchWidget extends StatelessWidget {
  final BrandsController controller;
  const BrandSearchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fieldTypes: FieldTypes.normal,
      controller: controller.brandsSearchCtr,
      hint: "Search in brands...",
      type: TextInputType.text,
      fillColor: context.colors.white,
      action: TextInputAction.search,
      contentPadding: const EdgeInsetsDirectional.only(start: 15),
      validate: (value) => value?.noValidate(),
      onChange: (value) {
        DebounceHelper.instance.startSearch(
          value: value,
          onSearch: (val) => controller.onPressSearchBrand(context),
        );
      },
      suffixIcon: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => controller.onPressSearchBrand(context),
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
      onSubmit: () => controller.onPressSearchBrand(context),
    );
  }
}
