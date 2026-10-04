part of 'widgets_imports.dart';

class AiChatProductTileWidget extends StatelessWidget {
  final AiChatProductCard item;
  final VoidCallback onTap;

  const AiChatProductTileWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 148,
        padding: const EdgeInsets.all(Dimens.dp8),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(Dimens.dp12),
          border: Border.all(color: context.colors.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedImage(
              url: item.thumbnailImg ?? '',
              height: 72,
              width: double.infinity,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(Dimens.dp8),
            ),
            Gaps.vGap8,
            Text(
              item.name ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s12_w500(color: context.colors.black),
            ),
            const Spacer(),
            Text(
              item.priceText,
              style: AppTextStyle.s12_w600(color: context.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
