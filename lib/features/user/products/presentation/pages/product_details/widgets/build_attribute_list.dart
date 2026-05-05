part of 'product_details_widgets_imports.dart';

class BuildAttributeList extends StatelessWidget {
  final ProductDetailsController controller;
  final List<Variant> variants;

  const BuildAttributeList({super.key, required this.controller, required this.variants});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: variants.length,
        itemBuilder: (context, index) {
          return BuildAttributeItems(
            controller: controller,
            variants: variants,
            index: index,
          );
        },
        separatorBuilder: (context, position) => Gaps.hGap10,
      ),
    );
  }
}
