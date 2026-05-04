part of 'product_details_widgets_imports.dart';

class BuildProductSpecifications extends StatelessWidget {
  final ProductDetailsController controller;
  final Product productModel;

  const BuildProductSpecifications(
      {super.key, required this.controller, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showSection(),
      replacement: Gaps.empty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildProductAttributes(
            controller: controller,
            productModel: productModel,
          ),
          // BuildProductQty(controller: controller, productModel: productModel),
        ],
      ),
    );
  }

  bool showSection() {
    final variants = productModel.variants ?? [];
    return variants.isNotEmpty && productModel.isMultiple == true;
  }
}
