part of 'classified_products_w_imports.dart';

class BuildProductView extends StatelessWidget {
  final ClassifiesProductsController controller;

  final List<CusProduct> products;

  const BuildProductView(
      {Key? key, required this.products, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: products.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          Padding(
            padding: Dimens.paddingVertical10PX,
            child: Text(
              tr('allProducts'),
              style: AppTextStyle.s15_w700(color: context.colors.black),
            ),
          ),
          ...List.generate(
            products.length,
            (index) => BuildProductViewItem(
              model: products[index],
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
