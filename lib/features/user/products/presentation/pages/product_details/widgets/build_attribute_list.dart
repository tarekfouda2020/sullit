part of 'product_details_widgets_imports.dart';

class BuildAttributeList extends StatelessWidget {
  final ProductDetailsController controller;
  final int index;
  final List<ProductOptions> productOptions;

  const BuildAttributeList({super.key, required this.controller, required this.index, required this.productOptions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.separated(
        padding: Dimens.paddingHorizontal15PX,
        scrollDirection: Axis.horizontal,
        itemCount: productOptions[index].options!.length,
        itemBuilder: (context, position) {
          return BuildAttributeItems(
            controller: controller,
            optionModel: productOptions,
            index: index,
            position: position,
          );
        },
        separatorBuilder: (context, position) => Gaps.hGap10,
      ),
    );
  }
}
