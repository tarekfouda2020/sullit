part of 'home_main_widgets_imports.dart';

class BuildHomeNewProducts extends StatelessWidget {
  final List<Product> newestProducts;
  final HomeMainController controller;

  const BuildHomeNewProducts(
      {super.key, required this.newestProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          BuildHeaderTitle(title: tr('newProducts')),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
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
                          onFavRefresh: () =>
                              controller.onChangeFav(newestProducts[index]),
                          onCompareRefresh: () {
                            newestProducts[index].isAddedTCompare =
                                !newestProducts[index].isAddedTCompare!;
                            controller.homeCubit
                                .onUpdateData(controller.homeCubit.state.data);
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
