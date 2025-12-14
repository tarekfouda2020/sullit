part of 'search_widgets_imports.dart';

class BuildProductSuggestions extends StatelessWidget {
  final List<Product> products;
  final bool showSeeAll;
  final SearchController controller;

  const BuildProductSuggestions({
    super.key,
    required this.products,
    required this.showSeeAll,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSuggestHeader(
            title: tr('productSuggestions'),
            showSeeAll: showSeeAll,
            isProduct: true,
            controller: controller),
        Visibility(
          visible: products.isEmpty,
          child: Container(
            padding: Dimens.paddingVertical20PX,
            alignment: Alignment.center,
            child: Text(
              tr('noProductsFound'),
              style: AppTextStyle.s15_w700(color: context.colors.black),
            ),
          ),
        ),
        ...List.generate(
          products.length,
          (index) => BuildProductSuggestItem(
            productModel: products[index],
          ),
        )
      ],
    );
  }
}
