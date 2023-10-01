part of 'product_details_widgets_imports.dart';

class BuildProductAttributes extends StatelessWidget {
  final ProductDetailsController controller;
  final List<ProductOptions> productOptions;

  const BuildProductAttributes(
      {super.key, required this.controller, required this.productOptions});

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
                  Text(
                    productOptions[index].title!,
                    style: AppTextStyle.s12_w500(
                      color: context.colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gaps.vGap10,
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
          Gaps.line(context.colors.greyWhite, 20.h),
        ],
      ),
    );
  }
}
