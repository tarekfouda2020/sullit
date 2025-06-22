part of 'category_details_widgets_imports.dart';

class BuildFilterBar extends StatelessWidget {
  final CategoryDetailsController detailsController;

  const BuildFilterBar({super.key, required this.detailsController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<SubCategory?>, GenericState<SubCategory?>>(
      bloc: detailsController.specificationsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            // margin: Dimens.paddingAll15PX,
            margin: Dimens.paddingHorizontal15PX,
            padding: Dimens.marginBottom5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Expanded(
                //   child: DropdownTextField<BrandDomainModel>(
                //     title: tr('allBrands'),
                //     hint: tr('allBrands'),
                //     fillColor: context.colors.white,
                //     itemAsString: (u) => u.name,
                //     margin: EdgeInsets.zero,
                //     validate: (value) => validateDropDown(context),
                //     data: state.data?.brands,
                //     onChange: (model) => detailsController.onChangeBrand(model),
                //   ),
                // ),
                // Gaps.hGap15,
                InkWell(
                  onTap: () =>
                      detailsController.scaffold.currentState?.openDrawer(),
                  child: Padding(
                    padding: const EdgeInsets.all(Dimens.dp5),
                    child: SvgPicture.asset(
                      Res.filterIcon,
                    ),
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
