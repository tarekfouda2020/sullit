part of 'shipping_widgets_imports.dart';

class CartPreviewSellerSectionWidget extends StatelessWidget {
  final CartPreviewSeller seller;

  const CartPreviewSellerSectionWidget({
    super.key,
    required this.seller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.greyWhite),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            seller.shopName.isNotEmpty ? seller.shopName : seller.sellerName,
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
          if (_branchMessage != null) ...[
            Gaps.vGap8,
            Text(
              _branchMessage!,
              style: AppTextStyle.s14_w500(color: context.colors.textColor),
            ),
          ],
          if (seller.deliveryMessage?.isNotEmpty == true) ...[
            Gaps.vGap8,
            Text(
              seller.deliveryMessage!,
              style: AppTextStyle.s14_w500(color: context.colors.redAccent),
            ),
          ],
          if (seller.removed.isNotEmpty) ...[
            Gaps.vGap12,
            Text(
              tr('cartRemovedItems'),
              style: AppTextStyle.s14_w600(color: context.colors.redAccent),
            ),
            Gaps.vGap8,
            ...seller.removed.map(
              (item) => CartPreviewChangeItemWidget(removedItem: item),
            ),
          ],
          if (seller.updated.isNotEmpty) ...[
            Gaps.vGap12,
            Text(
              tr('cartUpdatedItems'),
              style: AppTextStyle.s14_w600(color: context.colors.primary),
            ),
            Gaps.vGap8,
            ...seller.updated.map(
              (item) => CartPreviewChangeItemWidget(updatedItem: item),
            ),
          ],
        ],
      ),
    );
  }

  String? get _branchMessage {
    if (!seller.branchChanged) {
      return null;
    }
    final fromName = seller.fromBranch?.name;
    final toName = seller.toBranch?.name;
    if (fromName == null || toName == null) {
      return null;
    }
    return tr('cartBranchChanged')
        .replaceAll('{from}', fromName)
        .replaceAll('{to}', toName);
  }
}
