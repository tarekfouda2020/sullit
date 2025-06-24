part of 'product_details_widgets_imports.dart';

class BuildProductSpecifications extends StatelessWidget {
  final ProductDetailsController controller;
  final Product productModel;

  const BuildProductSpecifications(
      {super.key, required this.controller, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Visibility(
        visible: (productModel.choiceOptions ?? <ProductOptions>[]).isNotEmpty,
        child: Container(
          padding: Dimens.paddingAll8PX,
          margin: Dimens.paddingHorizontal15PX,
          decoration:  CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildProductAttributes(
                controller: controller,
                productOptions: productModel.choiceOptions ?? [],
              ),
              // BuildProductQty(controller: controller, productModel: productModel),
            ],
          ),
        ),
      ),
    );
  }
}
