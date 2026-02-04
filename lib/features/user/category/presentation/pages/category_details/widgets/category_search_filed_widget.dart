part of 'category_details_widgets_imports.dart';
class CategorySearchFiledWidget extends StatelessWidget {
  final CategoryDetailsController controller;
  const CategorySearchFiledWidget({super.key, required this.controller});

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
            controller: controller.searchFieldCtr,
            validate: (value) => value?.noValidate(),
            hint: tr('searchCats'),
            onSubmit: () => controller.onPressSearch(context),
            onChange: (value) => controller.whileWriting(value),
            suffixIcon: GestureDetector(
              onTap: () => controller.onPressSearch(context),
              child: Transform.scale(
                scale: 0.4,
                child: SvgPicture.asset(Res.searchIcon),
              ),
            ),
            margin: Dimens.paddingVertical10PX,
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
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.clear, size: 16, color: context.colors.gray8,),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
