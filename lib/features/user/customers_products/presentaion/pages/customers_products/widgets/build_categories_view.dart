part of 'customers_products_w_imports.dart';

class BuildCategoriesView extends StatelessWidget {
  final CustomerProductsController controller;

  const BuildCategoriesView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ProductSpecifications>>,
        GenericState<List<ProductSpecifications>>>(
      bloc: controller.subCategoriesCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Column(
            children: List.generate(
              state.data.length,
              (position) => BuildSubCategoriesView(
                controller: controller,
                parentSubCategory: state.data[position],
                position: position,
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
