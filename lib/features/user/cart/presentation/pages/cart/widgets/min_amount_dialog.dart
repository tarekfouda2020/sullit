part of 'cart_widgets_imports.dart';

class MinAmountDialog extends StatelessWidget {
  final MinAmountSellerDomain seller;
  final VoidCallback onDelete;
  final int? shopId;
  final CartController controller;
  const MinAmountDialog({
    super.key,
    required this.seller,
    required this.onDelete,
    required this.shopId,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius20PX,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close, color: context.colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
              child: Column(
                children: [
                  Text(
                    tr("alert"),
                    style: AppTextStyle.s20_w700(color: context.colors.black),
                  ),
                  Gaps.vGap16,
                  Text(
                    seller.message,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s14_w400(color: context.colors.black)
                        .copyWith(
                      height: 1.6,
                      letterSpacing: 0.2,
                    ),
                  ),
                  Gaps.vGap32,
                  DefaultButton(
                    // title: tr('delete_products'),
                    title: "Empty “${seller.name}” Cart",
                    height: 50,
                    margin: EdgeInsets.zero,
                    borderRadius: Dimens.borderRadius12PX,
                    onTap: () {
                      Navigator.pop(context);
                      onDelete();
                    },
                  ),
                  Gaps.vGap12,
                  DefaultButton(
                    // title: tr('keep_shopping'),
                    title: "Add more items",
                    textColor: context.colors.primary,
                    height: 50,
                    margin: EdgeInsets.zero,
                    color: Colors.transparent,
                    borderColor: context.colors.primary,
                    borderRadius: Dimens.borderRadius12PX,
                    onTap: () async {
                      Navigator.pop(context);
                      if(shopId!=null && shopId! >0 ){
                         AutoRouter.of(context)
                            .push(SellerProductsPageRoute(shopId: shopId!));
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
