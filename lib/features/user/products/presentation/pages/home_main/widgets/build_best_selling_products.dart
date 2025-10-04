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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // BuildHeaderTitle(
        //   title: tr('justForYou'),
        //   // onTap: () => AutoRouter.of(context).push(AllProductPageRoute(
        //   //   bestSellingProducts: bestSellingProducts,
        //   // )),
        // ),
        SizedBox(
          height: 220,
          child: SingleChildScrollView(
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
                        onFavRefresh: () => controller.onChangeFav(bestSellingProducts[index],context),
                        onCompareRefresh: () {
                          bestSellingProducts[index].isAddedTCompare =
                              !bestSellingProducts[index].isAddedTCompare!;
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
    );
  }
}
