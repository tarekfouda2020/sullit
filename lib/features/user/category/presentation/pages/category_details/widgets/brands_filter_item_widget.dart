part of 'category_details_widgets_imports.dart';

class BrandsFilterItem extends StatelessWidget {
  final CategoryDetailsController controller;

  const BrandsFilterItem({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.showBrandsCubit,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              // onTap: () => AutoRouter.of(context).push(const BrandsRoute()),
              onTap: () => controller.showBrandsCubit.onUpdateData(!state.data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(tr("brand"),
                    style: AppTextStyle.s14_w600(color: context.colors.black),
                  ),
                  Icon( state.data ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                    color: context.colors.black,
                    size: 20.sp,
                  )
                ],
              ),
            ),
            Divider(endIndent: 5,color: context.colors.gray,height: 15),
            if(state.data)
            BlocBuilder<GenericBloc<SubCategory?>, GenericState<SubCategory?>>(
              bloc: controller.specificationsCubit,
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(state.data!.brands.length, (index) {
                    var model = state.data!.brands[index];
                    return SubFilterItemWidget(
                      text: model.name,
                      isSelected: model == controller.brandModel,
                      onSelect: (value) => controller.onChangeBrand(model),
                    );
                  }),
                );
              },
            )
          ],
        );
      },
    );
  }
}
