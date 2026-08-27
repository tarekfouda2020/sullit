part of 'imports.dart';

class StoreHeaderWidget extends StatelessWidget {
  final String sellerName;
  final String sellerImage;
  final Widget? trailing;

  const StoreHeaderWidget({
    super.key,
    required this.sellerName,
    required this.sellerImage,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.line(context.colors.gray3, 10.h),
        Gaps.vGap8,
        Padding(
          padding: Dimens.paddingHorizontal20PX,
          child: Row(
            children: [
              if (sellerImage.isNotEmpty)
                CachedImage(
                  url: sellerImage,
                  width: Dimens.dp36,
                  height: Dimens.dp36,
                  fit: BoxFit.cover,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                )
              else
                Container(
                  width: Dimens.dp36,
                  height: Dimens.dp36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colors.primary,
                  ),
                  child: Icon(
                    Icons.store,
                    color: context.colors.white,
                  ),
                ),
              Gaps.hGap9,
              Expanded(
                child: Text(
                  sellerName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s16_w600(color: context.colors.black),
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ],
    );
  }
}
