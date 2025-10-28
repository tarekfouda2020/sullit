part of 'product_details_widgets_imports.dart';

class BuildProductAttributes extends StatelessWidget {
  final ProductDetailsController controller;
  final List<ProductOptions> productOptions;

  const BuildProductAttributes({super.key, required this.controller, required this.productOptions});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: productOptions.isNotEmpty,
      replacement: Gaps.vGap5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          ...List.generate(
            productOptions.length,
            (index) => Visibility(
              visible: productOptions[index].options!.isNotEmpty,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: Dimens.paddingHorizontal15PX,
                    child: Text(
                     "${tr("select")} ${productOptions[index].title!}",
                      style: AppTextStyle.s18_w600(color: context.colors.blackTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.vGap12,
                  BuildAttributeList(
                    controller: controller,
                    index: index,
                    productOptions: productOptions,
                  ),
                  Gaps.vGap15,
                ],
              ),
            ),
          ),
          //Gaps.line(context.colors.greyWhite, 10),
        ],
      ),
    );
  }
}
