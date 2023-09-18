part of 'customers_products_w_imports.dart';

class BuildMainCategories extends StatelessWidget {
  final CustomerProductsController controller;

  const BuildMainCategories({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<ProductSpecifications?>,
        GenericState<ProductSpecifications?>>(
      bloc: controller.specificationsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            height: 35.h,
            margin: const EdgeInsets.only(top: Dimens.dp5),
            padding: Dimens.paddingAll5PX,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.data!.categories.length,
              itemBuilder: (_, index) {
                return BuildMainCategoryItem(
                  controller: controller,
                  categoryModel: state.data!.categories[index],
                  index: index,
                );
              },
            ),
          );
        } else {
          return const BuildLoadingMainCategories();
        }
      },
    );
  }
}
