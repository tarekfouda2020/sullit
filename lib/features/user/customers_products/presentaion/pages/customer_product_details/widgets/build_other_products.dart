part of 'customer_product_details_w_imports.dart';

class BuildOtherProducts extends StatelessWidget {
  final List<CustomerProduct> otherProducts;

  const BuildOtherProducts({super.key, required this.otherProducts});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: otherProducts.isNotEmpty,
      child: Container(
        height: 270.spMin,
        padding: Dimens.paddingAll8PX,
        margin: Dimens.paddingVertical10PX,
        decoration: CustomDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap10,
            Text(
              tr('otherAds'),
              style: AppTextStyle.s15_w700(
                color: context.colors.black,
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: Dimens.paddingVertical10PX,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    otherProducts.length,
                    (index) => Padding(
                      padding: Dimens.paddingHorizontal5PX,
                      child: BuildCustomerProductItem(
                        productModel: otherProducts[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
