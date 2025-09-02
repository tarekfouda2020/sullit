part of 'search_widgets_imports.dart';

class BuildProductSuggestions extends StatelessWidget {
  final List<Product> products;

  const BuildProductSuggestions({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSuggestHeader(title: tr('productSuggestions')),
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
