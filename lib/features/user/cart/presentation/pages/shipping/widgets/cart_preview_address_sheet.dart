part of 'shipping_widgets_imports.dart';

class CartPreviewAddressSheet extends StatelessWidget {
  final CartPreviewAddress preview;
  final VoidCallback onConfirm;
  final VoidCallback onChangeAddress;
  final ValueChanged<CartPreviewSeller> onAddMoreItems;

  const CartPreviewAddressSheet({
    super.key,
    required this.preview,
    required this.onConfirm,
    required this.onChangeAddress,
    required this.onAddMoreItems,
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
                  final seller = preview.sellers[index];
                  return CartPreviewSellerSectionWidget(
                    seller: seller,
                    onAddMoreItems: () => onAddMoreItems(seller),
                  );
                },
              ),
            ),
            Gaps.vGap16,
            if (_allCartsCleared) ...[
              Text(
                tr('cartAllSellersCleared'),
                textAlign: TextAlign.center,
                style: AppTextStyle.s14_w500(color: context.colors.redAccent),
              ),
              Gaps.vGap12,
            ],
            DefaultButton(
              title: tr('confirm'),
              margin: EdgeInsets.zero,
              disabled: !_canConfirm,
              color: _canConfirm
                  ? context.colors.primary
                  : context.colors.disableGray,
              onTap: _canConfirm ? onConfirm : null,
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


  bool get _allCartsCleared => preview.allCartsCleared;

  bool get _canConfirm => preview.canConfirm;

}
