part of 'imports.dart';

class ProductItemWidget extends StatelessWidget {
  final PriceComparisonProductDomainModel product;

  const ProductItemWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: context.colors.borderColor,
        ),
      ),
      child: Row(
        children: [
          CachedImage(
            url: product.thumbnailImage,
            height: 29,
            width: 29,
            borderRadius: BorderRadius.circular(50),
          ),
          Gaps.hGap10,
          Expanded(
            child: Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s16_w400(
                color: context.colors.black,
              ),
            ),
          ),
          Gaps.hGap10,
          Text(
            '•',
            style: AppTextStyle.s12_w400(
              color: context.colors.textColor,
            ),
          ),
          Gaps.hGap10,
          Flexible(
            child: Text(
              product.unit,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s12_w400(
                color: context.colors.textColor,
              ),
            ),
          ),
          Gaps.hGap9,
        ],
      ),
    );
  }
}
