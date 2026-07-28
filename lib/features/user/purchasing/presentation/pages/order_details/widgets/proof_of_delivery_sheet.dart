part of 'order_details_widgets_imports.dart';

class ProofOfDeliverySheet extends StatelessWidget {
  final String imageUrl;

  const ProofOfDeliverySheet({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(title: tr('proofOfDelivery')),
          Gaps.vGap16,
          Text(
            tr('proofOfDeliverySubtitle'),
            style: AppTextStyle.s14_w400(color: context.colors.gray8),
          ),
          Gaps.vGap16,
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp12),
            child: CachedImage(
              url: imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 280,
              haveRadius: false,
            ),
          ),
          Gaps.vGap16,
        ],
      ),
    );
  }
}

class ProofOfDeliveryRow extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const ProofOfDeliveryRow({super.key, required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('proofOfDeliverySubtitle'),
                  style: AppTextStyle.s14_w400(color: context.colors.gray8),
                ),
                Gaps.vGap4,
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    tr('viewPhoto'),
                    style: AppTextStyle.s14_w400(color: context.colors.black)
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          Gaps.hGap12,
          GestureDetector(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.dp8),
              child: CachedImage(
                url: imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                haveRadius: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
