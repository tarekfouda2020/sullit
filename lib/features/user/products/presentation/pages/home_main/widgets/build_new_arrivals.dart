part of 'home_main_widgets_imports.dart';

class BuildNewArrivals extends StatelessWidget {
  final List<Product> newArrivals;
  final HomeMainController controller;

  const BuildNewArrivals(
      {super.key, required this.newArrivals, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const BuildHeaderTitle(title: "New Arrivals"),
        SizedBox(
          height: 220,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Gaps.hGap10,
                ...List.generate(
                  newArrivals.length,
                  (index) {
                    return Padding(
                      padding: Dimens.paddingHorizontal5PX,
                      child: BuildProductItem(
                        productModel: newArrivals[index],
                        onFavRefresh: () =>
                            controller.onChangeFav(newArrivals[index], context),
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
