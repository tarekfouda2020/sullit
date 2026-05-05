part of 'product_details_widgets_imports.dart';

class BuildProductAttributes extends StatelessWidget {
  final ProductDetailsController controller;
  final Product productModel;

  const BuildProductAttributes({
    super.key,
    required this.controller,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: productModel.variants?.isNotEmpty ?? false,
      replacement: Gaps.vGap5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          Text(
            tr("select_your_choice"),
            style: AppTextStyle.s18_w600(color: context.colors.blackTextColor),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap12,
          BuildAttributeList(
            controller: controller,
            variants: productModel.variants ?? [],
          ),
          Gaps.vGap15,
        ],
      ),
    );
  }
}
