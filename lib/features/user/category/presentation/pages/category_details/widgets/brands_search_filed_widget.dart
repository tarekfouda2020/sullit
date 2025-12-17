part of 'category_details_widgets_imports.dart';

class BrandsSearchFiledWidget extends StatelessWidget {
  final TextEditingController txtController;
  final void Function() onPressSearch;

  const BrandsSearchFiledWidget({
    super.key,
    required this.txtController,
    required this.onPressSearch,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.dp35,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        controller: txtController,
        hint: tr("search_in_brands"),
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
                onTap: onPressSearch,
                child: SvgPicture.asset(
                  Res.searchIcon,
                  colorFilter: ColorFilter.mode(
                      context.colors.textColor, BlendMode.srcIn),
                ),
              ),
              Gaps.hGap10,
            ],
          ),
        ),
        onSubmit: onPressSearch,
      ),
    );
  }
}
