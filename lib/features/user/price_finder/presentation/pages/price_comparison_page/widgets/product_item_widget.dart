part of 'widgets_imports.dart';

class ProductItemWidget extends StatelessWidget {
  final PriceComparisonProductDomainModel product;

  const ProductItemWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.borderColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: product.thumbnailImage,
            height: 52,
            width: 52,
            borderRadius: BorderRadius.circular(12),
          ),
          Gaps.hGap13,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s18_w700(
                    color: context.colors.black,
                  ),
                ),
                Text(
                  '${product.unit} • ${product.categoryName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
                Text(
                  'Barcode: ${product.barcode}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s12_w400(
                    color: context.colors.textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
