part of 'widgets_imports.dart';

class PharmacyProductsSearchFieldWidget extends StatelessWidget {
  final PharmacyDetailsController controller;
  const PharmacyProductsSearchFieldWidget(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gaps.hGap15,
        Expanded(
          child: GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.search,
            fillColor: context.colors.white,
            controller: controller.productSearchCtr,
            validate: (value) => value?.noValidate(),
            hint: "${tr("searchInProducts")}...",
            onSubmit: () => controller.searchProducts(context),
            onChange: (value) => controller.whileWriting(context, value),
            suffixIcon: GestureDetector(
              onTap: () => controller.searchProducts(context),
              child: Transform.scale(
                scale: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Res.searchIcon),
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.zero,
          ),
        ),
        Gaps.hGap15,
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.showClearIcon,
          builder: (context, state) {
            return Visibility(
              visible: state.data,
              child: GestureDetector(
                onTap: () => controller.clearSearchField(),
                child: Container(
                  width: 23,
                  height: 23,
                  margin: Dimens.paddingEnd10,
                  decoration: BoxDecoration(
                      color: context.colors.disableGray,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.clear,
                    size: 16,
                    color: context.colors.gray8,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
