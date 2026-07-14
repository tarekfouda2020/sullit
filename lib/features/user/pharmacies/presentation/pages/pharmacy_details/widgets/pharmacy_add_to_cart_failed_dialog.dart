part of 'widgets_imports.dart';

class PharmacyAddToCartFailedDialog extends StatelessWidget {
  final String pharmacyName;
  final VoidCallback onClearCart;
  final VoidCallback onGoToPharmacy;
  final bool hasBranches;

  const PharmacyAddToCartFailedDialog({
    super.key,
    required this.pharmacyName,
    required this.onClearCart,
    required this.onGoToPharmacy,
    this.hasBranches = true,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const CloseButtonIcon(),
                  )
                ],
              ),
              Gaps.vGap8,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: hasBranches
                          ? "Cart supports one branch only for"
                          : "Cart supports one Pharmacy only. Please clear your cart from ",
                      style: AppTextStyle.s16_w400(color: context.colors.black)
                          .copyWith(height: 1.6),
                    ),
                    TextSpan(
                      text: pharmacyName,
                      style: AppTextStyle.s16_w700(color: context.colors.black)
                          .copyWith(height: 1.6),
                    ),
                    TextSpan(
                      text: hasBranches
                          ? ". Please clear your cart to add products from another branch."
                          : " to add products from another pharmacy.",
                      style: AppTextStyle.s16_w400(color: context.colors.black)
                          .copyWith(height: 1.6),
                    ),
                  ],
                ),
              ),
              Gaps.vGap24,
              Row(
                spacing: 7,
                children: [
                  Expanded(
                    child: DefaultButton(
                      title: "Clear Cart",
                      height: 50,
                      margin: EdgeInsets.zero,
                      borderRadius: Dimens.borderRadius12PX,
                      onTap: onClearCart,
                      fontSize: 16,
                    ),
                  ),
                  if (!hasBranches)
                    Expanded(
                      child: DefaultButton(
                        title: "View Pharmacy",
                        height: 50,
                        margin: EdgeInsets.zero,
                        borderRadius: Dimens.borderRadius12PX,
                        onTap: onGoToPharmacy,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
