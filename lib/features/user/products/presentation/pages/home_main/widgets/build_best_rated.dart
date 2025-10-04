part of 'home_main_widgets_imports.dart';

class BuildBestRated extends StatelessWidget {
  final List<Product> bestRated;
  final HomeMainController controller;

  const BuildBestRated({super.key, required this.bestRated, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const BuildHeaderTitle(title: "Best Rated"),
        SizedBox(
          height: 220,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Gaps.hGap10,
                ...List.generate(
                  bestRated.length,
                      (index) {
                    return Padding(
                      padding: Dimens.paddingHorizontal5PX,
                      child: BuildProductItem(
                        productModel: bestRated[index],
                        onFavRefresh: () => controller.onChangeFav(bestRated[index],context),

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
