part of 'shipping_widgets_imports.dart';

class CartPreviewAddressSheet extends StatelessWidget {
  final CartPreviewAddress preview;
  final VoidCallback onConfirm;
  final VoidCallback onChangeAddress;

  const CartPreviewAddressSheet({
    super.key,
    required this.preview,
    required this.onConfirm,
    required this.onChangeAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height - (kToolbarHeight + 160),
      ),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: CustomBottomSafeAreaWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomSheetHeaderWidget(
              title: tr('cartAddressChangesTitle'),
            ),
            Gaps.vGap12,
            Text(
              tr('cartAddressChangesDesc'),
              textAlign: TextAlign.center,
              style: AppTextStyle.s16_w400(color: context.colors.textColor),
            ),
            Gaps.vGap16,
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: preview.sellers.length,
                separatorBuilder: (_, __) => Gaps.vGap12,
                itemBuilder: (context, index) {
                  return CartPreviewSellerSectionWidget(
                    seller: preview.sellers[index],
                  );
                },
              ),
            ),
            Gaps.vGap16,
            DefaultButton(
              title: tr('confirm'),
              margin: EdgeInsets.zero,
              onTap: onConfirm,
            ),
            Gaps.vGap10,
            DefaultButton(
              title: tr('changeAddress'),
              margin: EdgeInsets.zero,
              color: context.colors.white,
              textColor: context.colors.primary,
              borderColor: context.colors.primary,
              onTap: onChangeAddress,
            ),
          ],
        ),
      ),
    );
  }
}
