part of 'customers_products_w_imports.dart';

class BuildSortBar extends StatelessWidget {
  final CustomerProductsController controller;

  const BuildSortBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<ProductSpecifications?>,
        GenericState<ProductSpecifications?>>(
      bloc: controller.specificationsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            margin: Dimens.paddingAll10PX,
            child: Column(
              children: [
                DropdownTextField<BrandDomainModel>(
                  title: "All Brand",
                  hint: "All Brand",
                  fillColor: context.colors.white,
                  itemAsString: (u) => u.name,
                  margin: EdgeInsets.zero,
                  validate: (value) => validateDropDown(context),
                  data: state.data?.brands,
                  onChange: (model) => controller.onChangeBrand(model),
                ),
                Gaps.vGap10,
                Row(
                  children: [
                    Expanded(
                      child: DropdownTextField<SortTypes>(
                        title: "Sort By",
                        hint: "Sort By",
                        fillColor: context.colors.white,
                        itemAsString: (u) => u.name,
                        margin: EdgeInsets.zero,
                        validate: (value) => validateDropDown(context),
                        data: state.data?.sortTypes,
                        onChange: (model) => controller.onChangeSortType(model),
                        clearBtnPadding: EdgeInsets.zero,
                        arrowBtnPadding: EdgeInsets.zero,
                      ),
                    ),
                    Gaps.hGap5,
                    Expanded(
                      child: DropdownTextField<SortTypes>(
                        title: "Condition",
                        hint: "Condition",
                        fillColor: context.colors.white,
                        itemAsString: (u) => u.name,
                        margin: EdgeInsets.zero,
                        validate: (value) => validateDropDown(context),
                        data: state.data?.sortConditions,
                        onChange: (model) =>
                            controller.onChangeConditions(model),
                        clearBtnPadding: EdgeInsets.zero,
                        arrowBtnPadding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        } else {
          return const BuildLoadingSortBar();
        }
      },
    );
  }
}
