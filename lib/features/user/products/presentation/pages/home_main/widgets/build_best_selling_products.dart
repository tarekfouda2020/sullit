part of 'home_main_widgets_imports.dart';

class BuildBestSellingProducts extends StatelessWidget {
  final List<Product> bestSellingProducts;
  final HomeMainController controller;

  const BuildBestSellingProducts({
    super.key,
    required this.bestSellingProducts,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap5,
          const BuildHeaderTitle(title: "Just for you"),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap10,
                  ...List.generate(
                    bestSellingProducts.length,
                    (index) {
                      return Padding(
                        padding: Dimens.paddingHorizontal5PX,
                        child: BuildProductItem(
                          productModel: bestSellingProducts[index],
                          onFavRefresh: () => controller.onChangeFav(
                            bestSellingProducts[index],
                          ),
                          onCompareRefresh: () {
                            bestSellingProducts[index].isAddedTCompare = !bestSellingProducts[index].isAddedTCompare!;
                            controller.homeCubit.onUpdateData(controller.homeCubit.state.data);
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
