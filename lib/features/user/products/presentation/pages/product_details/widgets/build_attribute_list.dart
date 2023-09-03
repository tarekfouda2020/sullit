part of 'product_details_widgets_imports.dart';

class BuildAttributeList extends StatelessWidget {
  final ProductDetailsController controller;
  final int index;
  final List<ProductOptions> productOptions;

  const BuildAttributeList(
      {super.key,
      required this.controller,
      required this.index,
      required this.productOptions});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5.r,
      spacing: 5.r,
      children: List.generate(
        productOptions[index].options!.length,
        (position) => BuildAttributeItems(
          controller: controller,
          optionModel: productOptions,
          index: index,
          position: position,
        ),
      ),
    );
  }
}
