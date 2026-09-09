part of 'shipping_widgets_imports.dart';

class CartPreviewChangeItemWidget extends StatelessWidget {
  final CartPreviewRemovedItem? removedItem;
  final CartPreviewUpdatedItem? updatedItem;

  const CartPreviewChangeItemWidget({
    super.key,
    this.removedItem,
    this.updatedItem,
  });

  bool get isRemoved => removedItem != null;

  String get title =>
      isRemoved ? removedItem!.productName : updatedItem?.productName ?? '';

  String get subtitle => isRemoved
      ? removedItem!.reason
      : tr('cartItemQtyUpdated')
          .replaceAll('{old}', '${updatedItem?.oldQuantity ?? 0}')
          .replaceAll('{new}', '${updatedItem?.quantity ?? 0}');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimens.dp8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            isRemoved ? Icons.remove_circle_outline : Icons.sync_alt,
            size: Dimens.dp18,
            color: isRemoved
                ? context.colors.redAccent
                : context.colors.primary,
          ),
          Gaps.hGap8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                ),
                Gaps.vGap4,
                Text(
                  subtitle,
                  style: AppTextStyle.s14_w400(color: context.colors.textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
