part of '../instore_cart_page_imports.dart';

class InstoreVariantSheetWidget extends StatelessWidget {
  final ProductDetailsDomainModel productDetails;
  final void Function(Variant variant) onVariantSelected;

  const InstoreVariantSheetWidget({
    super.key,
    required this.productDetails,
    required this.onVariantSelected,
  });

  @override
  Widget build(BuildContext context) {
    final variants = [...?productDetails.product.variants]
      ..sort((a, b) => (b.sortOrder ?? 0).compareTo(a.sortOrder ?? 0));

    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      margin: const EdgeInsets.only(top: kToolbarHeight + 15),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(title: tr('select_your_choice')),
          Gaps.vGap12,
          Text(
            productDetails.product.name ?? '',
            style: AppTextStyle.s14_w600(color: context.colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Gaps.vGap16,
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: variants.length,
              separatorBuilder: (_, __) => Gaps.vGap10,
              itemBuilder: (_, index) {
                return InstoreVariantItemWidget(
                  variant: variants[index],
                  onTap: () => onVariantSelected(variants[index]),
                );
              },
            ),
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
