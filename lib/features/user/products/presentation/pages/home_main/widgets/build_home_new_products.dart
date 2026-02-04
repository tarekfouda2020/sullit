part of 'home_main_widgets_imports.dart';

class BuildHomeNewProducts extends StatelessWidget {
  final List<Product> newestProducts;
  final HomeMainController controller;

  const BuildHomeNewProducts(
      {super.key, required this.newestProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //BuildHeaderTitle(title: tr('newProducts')),
        SizedBox(
          height: 220,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Gaps.hGap10,
                ...List.generate(
                  newestProducts.length,
                  (index) {
                    return Padding(
                      padding: Dimens.paddingHorizontal5PX,
                      child: BuildProductItem(
                        productModel: newestProducts[index],
                        onFavRefresh: () => controller.onChangeFav(newestProducts[index],context),
                        onCompareRefresh: () {
                          newestProducts[index].isAddedTCompare =
                              !newestProducts[index].isAddedTCompare!;
                          controller.homeCubit
                              .onUpdateData(controller.homeCubit.state.data);
                        },
                        onRefresh: () => controller.getHome(refresh: true),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
