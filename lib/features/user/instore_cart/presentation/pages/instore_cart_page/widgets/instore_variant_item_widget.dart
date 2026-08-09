part of '../instore_cart_page_imports.dart';

class InstoreVariantItemWidget extends StatelessWidget {
  final Variant variant;
  final VoidCallback onTap;

  const InstoreVariantItemWidget({
    super.key,
    required this.variant,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          border: Border.all(color: context.colors.gray3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            CachedImage(
              url: variant.image ?? '',
              width: 45,
              height: 45,
              fit: BoxFit.fill,
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                (variant.options ?? variant.name ?? '').replaceAll(',', ', '),
                style: AppTextStyle.s14_w400(color: context.colors.black),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gaps.hGap10,
            DirhamPrice(
              amount: variant.calculablePrice ?? '0',
              textStyle: AppTextStyle.s14_w700(color: context.colors.primary),
              currencyStyle:
                  AppTextStyle.s16_w400(color: context.colors.primary),
              currencyOffset: 0,
            ),
          ],
        ),
      ),
    );
  }
}
