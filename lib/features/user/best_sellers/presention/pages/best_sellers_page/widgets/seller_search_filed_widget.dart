part of 'widgets_imports.dart';


class SellerSearchFiledWidget extends StatelessWidget {
  final BestSellersPageController controller;
  const SellerSearchFiledWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenericTextField(
            fieldTypes: FieldTypes.normal,
            controller: controller.searchTxtController,
            hint: "Search in sellers...",
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
                    onTap:(){},
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
            onSubmit: (){},
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
