part of 'category_details_widgets_imports.dart';

class BuildFilterBar extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildFilterBar({super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<SubCategory?>,
        GenericState<SubCategory?>>(
      bloc: categoryDetailsController.specificationsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            margin: Dimens.paddingAll15PX,
            // margin: Dimens.paddingHorizontal15PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownTextField<BrandDomainModel>(
                    title:  tr('allBrands'),
                    hint: tr('allBrands'),
                    fillColor: context.colors.white,
                    itemAsString: (u) => u.name,
                    margin: EdgeInsets.zero,
                    validate: (value) => validateDropDown(context),
                    data: state.data?.brands,
                    onChange: (model) =>
                        categoryDetailsController.onChangeBrand(model),
                  ),
                ),
                Gaps.hGap15,
                InkWell(
                  onTap: () => categoryDetailsController.scaffold.currentState
                      ?.openDrawer(),
                  child: Container(
                    padding: const EdgeInsets.all(Dimens.dp5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.primary,
                    ),
                    child: Icon(Icons.filter_alt_outlined, size: 20.sp),
                  ),
                )
              ],
            ),
          );
        } else {
          return const BuildLoadingFilterBar();
        }
      },
    );
  }
}
