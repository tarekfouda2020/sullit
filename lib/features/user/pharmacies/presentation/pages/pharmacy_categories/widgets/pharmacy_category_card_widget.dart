part of 'widgets_imports.dart';

class PharmacyCategoryCardWidget extends StatelessWidget {
  final ShopCategory category;
  final VoidCallback onTap;

  const PharmacyCategoryCardWidget({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: Dimens.borderRadius12PX,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 122,
            height: 146,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.colors.primary.withValues(alpha: 0.06),
              shape: BoxShape.circle,
            ),
            child: CachedImage(
              url: category.icon,
              fit: BoxFit.cover,
              boxShape: BoxShape.circle,
              haveRadius: false,
              placeHolder: SvgPicture.asset(
                Res.category,
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Gaps.vGap12,
          Text(
            category.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
