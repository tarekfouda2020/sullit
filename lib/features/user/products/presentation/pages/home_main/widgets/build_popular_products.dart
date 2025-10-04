part of 'home_main_widgets_imports.dart';

class BuildPopularProducts extends StatelessWidget {
  final List<PopularProductsDomainModel> mostPopularProducts;

  const BuildPopularProducts({super.key, required this.mostPopularProducts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          //BuildHeaderTitle(title: tr('mostPopular')),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap16,
                  ...List.generate(
                    mostPopularProducts.length,
                    (index) {
                      return BuildPopularItem(
                        popularProductModel: mostPopularProducts[index],
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
